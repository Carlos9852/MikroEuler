// ================================================================================
// MikroLeo Memory Program Reader
// Version: v0.1
// Last update: first release
// ================================================================================
// Works with Arduino Mega (needs at least 18 I/O's)
// Date: December 04, 2021
// Author: Edson Junior Acordi
// License: MIT
// This code was adpted from the original:
// https://github.com/mbocaneg/arduino_eeprom_programmer
// ================================================================================
// What is this program used for?
// This code reads the content of the MikroLeo Program Memory
// Basic Program Memory: 2k x 16 bits => Two SRAM's 6116
// ================================================================================

// *********************************** IMPORTANT **********************************
// Make sure that MikroLeo is in Step mode (Jumper AUTO = open) and the Instruction Decoder
// is disabled. Connect Arduino GND with MikroLeo GND.
// ********************************************************************************

// >>>> Standard PIN Config for Read Data from MikroLeo Program Memory <<<<
// Nibble 0 (Low Nibble) = Operand n [OPR3:OPR0]
// --------------------
// MikroLeo   | Arduino
// -----------+--------
//    OPR0    |   A0
//    OPR1    |   A1
//    OPR2    |   A2
//    OPR3    |   A3
//
// Nibble 1 = Median Address [MAddr3:MAddr0]
// --------------------
// MikroLeo   | Arduino
// -----------+--------
//   MAddr0   |   A4
//   MAddr1   |   A5
//   MAddr2   |   A6
//   MAddr3   |   A7
//
// Nibble 2 = Opcode [Micro3:Micro0]
// --------------------
// MikroLeo   | Arduino
// -----------+--------
//   Micro0   |   A8
//   Micro1   |   A9
//   Micro2   |   A10
//   Micro3   |   A11
//
// Nibble 3 (High Nibble) = MICRO2/IN + AMODE + MOD[1:0]
// --------------------
// MikroLeo   | Arduino
// -----------+--------
//     MOD0   |   A12
//     MOD1   |   A13
//    AMODE   |   A14
//  MICRO2/IN |   A15
//
// Control Signals - STEP, /RSTPC and /OE
// --------------------
// MikroLeo   | Arduino
// -----------+--------
//     STEP   |   ~D9
//   /RSTPC   |   ~D10
//     /WE    |   ~D11
//     /OE    |   ~D12
// >>>> End of Standard PIN Config for Read Data from MikroLeo <<<<

word data_num = 5; //178; // Set the number of words to read from Program Memory (number of address)
word addr = 0; // Used to count and print instruction address

// ==== I/O Definitions for Read MikroLeo Program Memory ====
int LED = 13; // LED for debugging

// Program Memory Control Signals, tie to VDD with pullup resistor.
int OE = 12; // Digital Pin used as /OE
int WE = 11; // Digital Pin used as /WE

// Control Signals for MikroLeo
int RSTPC = 10; // Digital Pin used as /RSTPC
int STEP = 9; // Digital Pin used as STEP

// Definition of pins used for read Data from Program Memory
int dbit0 = A0; // Digital Pin used as Data0
int dbit1 = A1; // Digital Pin used as Data1
int dbit2 = A2; // ...
int dbit3 = A3;
int dbit4 = A4;
int dbit5 = A5;
int dbit6 = A6;
int dbit7 = A7; // Digital Pin used as Data7

int dbit8 = A8; // Digital Pin used as Data8
int dbit9 = A9; // Digital Pin used as Data9
int dbit10 = A10; // ...
int dbit11 = A11;
int dbit12 = A12;
int dbit13 = A13;
int dbit14 = A14;
int dbit15 = A15; // Digital Pin used as Data15

int dbArray [] = {
    dbit0, dbit1, dbit2, dbit3, dbit4, dbit5, dbit6, dbit7, dbit8, dbit9, dbit10, dbit11, dbit12, dbit13, dbit14, dbit15}; 

// Array that holds a word as individual bits, used for reading from Program Memory
int read_data [] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

void setup() {               
  Serial.begin(9600);

  // Set pins connected to Program Memory control signals as outputs, set them HIGH
  pinMode(WE, OUTPUT); // Write Enable is an output pin
  pinMode(OE, OUTPUT); // Output Enable is an output pin
  pinMode(RSTPC, OUTPUT); // Reset PC is an output pin
  pinMode(STEP, OUTPUT); // STEP is an output pin

  digitalWrite(WE, HIGH); // Disable "Write Enable"
  digitalWrite(OE, HIGH); // Disable "Output Enable"
  digitalWrite(STEP, LOW); // Set STEP to Low (prepare PC increment)
  digitalWrite(RSTPC, HIGH); // Set RSTPC to High (disable "Reset PC")

  delay(100);

  ResetPC(); // Reset MikroLeo Program Counter (PC)
  
  // Set Data pins to INPUT (Read Operation)
  for (int i = 0; i < sizeof(dbArray)/sizeof(int); i++){
    pinMode(dbArray[i], INPUT);
  }

}

void loop() {

//************************************

  // Set Memory chip to read
  digitalWrite(WE, HIGH); // Make sure that /WE is disabled
  digitalWrite(OE, LOW); // Enable /OE

  // Read Memory contents and print them out
  readRom();

  //infinite loop to avoid going back to beginning
  while(1){

    }

}

// Function that reads a value from ROM wherever address lines are pointing to
void dataRead(){
  digitalWrite(WE, HIGH); //....................... Redundant ? 

  //read binary data value at address lines, store binary stream in an array
  for(int i = 0; i<=15; i++){
   
    if((digitalRead(dbArray[i])) == HIGH){
      read_data[i]=1;
    }
    else{
      read_data[i]=0;
    }
   
  }

 // For each read, blink LED
  digitalWrite(LED, HIGH);   // Turn the LED ON
  delay(5);                  // Wait for a mili second
  digitalWrite(LED, LOW);    // Turn the LED OFF
  
  delay(2);

  // Perform bit shifting magic to convert acquired binary stream into an int
  int readValue = 0x0000;
  int myPow = 1;
  for(int i = 0; i < 16; i++){
    readValue += (read_data[i]*myPow);
    myPow = myPow*2;

  }

  // Put the visualization of the Address number with 3 nibbles (3 hex digits - Program memory of 4k)
  if(addr <= 15) {
    Serial.print("00");
  }
  if(addr <= 255 && addr>15) {
    Serial.print("0");
  }
  
  // Print the Address of Data
  Serial.print(addr, HEX);
  Serial.print("    "); // Space between Address and Data
  addr = addr + 1;

  // Put the visualization of the Data with 4 nibbles (4 hex digits)
  if(readValue<=15) {
    Serial.print("000");
  }
  if(readValue<=255 && readValue>15) {
    Serial.print("00");
  }
  if(readValue<=4095 && readValue>255) {
    Serial.print("0");
  }

  // Print out converted value in HEX format
  Serial.println(readValue, HEX);
  // Serial.println(); // Print blank line

  //disable chip, disable write
  digitalWrite(WE, HIGH); // Redundant ? 

}

// Function that simply reads out contents of rom for visual verification
void readRom(){
  //make sure chip and read disabled
  digitalWrite(WE, HIGH);

  // Data pins are now inputs
  for (int i = 0; i < sizeof(dbArray)/sizeof(int); i++){
    pinMode(dbArray[i], INPUT);
  }

  digitalWrite(WE, HIGH); 

    Serial.println("************ MikroLeo - Program Memory content ************");
    Serial.println("Addr | Data");
    delay(100);
      //for (int i = 0; i < sizeof(program_dat)/sizeof(word); i++){
        for (int i = 0; i < data_num; i++){
        
        dataRead(); // Read Data at current Address (pointed by PC) and print it

        IncPC(); // Increment PC
      }
      
    Serial.println(); // Blank line
    Serial.print("=> ");
    Serial.print(data_num, DEC); // Print the number of Data that were read from Program Memory
    Serial.println(" words were read!");
    Serial.println("************ End of Program Memory content ************");
}

void ResetPC(){
  digitalWrite(RSTPC, LOW); // Reset the MikroLeo Program Couter (PC)
  delay(100);
  digitalWrite(RSTPC, HIGH); // Disable signal "Reset PC"
}

void IncPC(){
  digitalWrite(STEP, HIGH); // Step Pulse to HIGH, prepare to increment the PC
  delay(10);
  digitalWrite(STEP, LOW); // Step Pulse to LOW, increment PC
  delay(10);
}
