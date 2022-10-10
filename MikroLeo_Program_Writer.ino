// Anotações:
// A função "void addrWrite(int address)" não é necessária, já que tem por finalidade o endereçamento.
// A função "dataWrite(program_dat[i])" é utilizada para gravar dados da posição atual do array program_dat[] para os pinos de Dados

//******************************************************************************************************************
//*********************************** CHANGE THESE VALUES WITH YOUR PROGRAM CODE ***********************************
//******************************************************************************************************************

// HARD CODED hex values to be written to MikroLeo Program Memory
word program_dat[] = {

// LCD Test - Sends letter M
//0x0000, 0x0A0F, 0x3000, 0x000F, 0x0A02, 0x0C64, 0x0400, 0x0500, 0x0502, 0x0B00, 0x0500, 0x0001, 0x0A0F, 0x3000, 0x0C64,
//0x0402, 0x0502, 0x0B00, 0x0500, 0x0002, 0x0A0F, 0x3000, 0x0C64, 0x0402, 0x0502, 0x0B00, 0x0500, 0x0003, 0x0A0F, 0x3000,
//0x0C64, 0x0408, 0x0502, 0x0B00, 0x0500, 0x0004, 0x0A0F, 0x3000, 0x0C64, 0x0400, 0x0502, 0x0B00, 0x0500, 0x0005, 0x0A0F,
//0x3000, 0x0C64, 0x040E, 0x0502, 0x0B00, 0x0500, 0x0006, 0x0A0F, 0x3000, 0x0C64, 0x0400, 0x0502, 0x0B00, 0x0500, 0x0007,
//0x0A0F, 0x3000, 0x0C64, 0x0406, 0x0502, 0x0B00, 0x0500, 0x0008, 0x0A0F, 0x3000, 0x0C64, 0x0404, 0x0503, 0x0B00, 0x0501,
//0x0009, 0x0A0F, 0x3000, 0x0C64, 0x040D, 0x0503, 0x0B00, 0x0501, 0x000A, 0x0A0F, 0x3000, 0x0C64, 0x0C57, 0x0B00, 0x0B00,
//0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0000, 0x0A00, 0x0A01, 0x080F, 0x0E6F,
//0x0F01, 0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0C67, 0x0200, 0x3802, 0x0E7A, 0x0F01, 0x0A00, 0x0B00, 0x0B00, 0x0B00, 0x0B00,
//0x0000, 0x0C67, 0x0201, 0x3802, 0x0E86, 0x0F01, 0x0A01, 0x0B00, 0x0B00, 0x0B00, 0x0B00, 0x0000, 0x0A00, 0x0C6F, 0x020F,
//0x0E9D, 0x0801, 0x0E9F, 0x0802, 0x0EA1, 0x0803, 0x0EA3, 0x0804, 0x0EA5, 0x0805, 0x0EA7, 0x0806, 0x0EA9, 0x0807, 0x0EAB,
//0x0808, 0x0EAD, 0x0809, 0x0EAF, 0x080A, 0x0EB1, 0x0C9C, 0x3000, 0x0C06, 0x3000, 0x0C0F, 0x3000, 0x0C17, 0x3000, 0x0C1F,
//0x3000, 0x0C27, 0x3000, 0x0C2F, 0x3000, 0x0C37, 0x3000, 0x0C3F, 0x3000, 0x0C47, 0x3000, 0x0C4F, 0x3000, 0x0C57

// RAMTest2
//0x1000, 0x3000, 0x2000, 0x0000, 0x4a00, 0x7800, 0x0e08, 0x0c15, 0x000f, 0x4a00, 0x000f, 0x7800, 0x0e0e, 0x0c15, 0x1300, 0x0f01,
//0x1700, 0x0409, 0x0b00, 0x0406, 0x0c03, 0x050f, 0x0c15, 0x3008, 0x1009, 0x0c19, 0x0b01, 0x1b00, 0x3b58, 0x7b00, 0x4c00, 0x4e00,
//0x0e15, 0x0dfa, 0x4d00, 0x0f01, 0x0f05, 0x0f0f, 0x2f00, 0x1f00, 0x3f45, 0x7f00, 0x0f08, 0x0b09

// /ROMOE signal test
//0x3001, 0x3000, 0x0c00
0x000c, 0x100f, 0x200f, 0x3007, 0x4a00, 0x0007, 0x7100, 0x3000, 0x0c00

//RAMTest4
//0x1000, 0x3000, 0x2000, 0x0000, 0x4a00, 0x7800, 0x0e08, 0x0c14, 0x0f01, 0x0800, 0x0e0c, 0x0c04, 0x0aff, 0x1300, 0x0f01, 0x1700,
//0x02ff, 0x0409, 0x0b00, 0x0406, 0x0c04, 0x050f, 0x0c14

// RAMTest
//0x0000, 0x0A05, 0x000B, 0x0A0A, 0x0000, 0x3805, 0x0E08, 0x0C10, 0x000B, 0x380A, 0x0E0C, 0x0C10, 0x0401, 0x0B00, 0x0400, 0x0C00, 0x050F, 0x0C10

// Square Waveform on OUTA
// 0x0401, 0x0F00, 0x0400, 0x0C00 // CLK is divided by 4 - Duty cycle of 50%
// 0x0401, 0x0400, 0x0C00 // CLK is divided by 3 - Duty cycle of 33.33%

//OUTA 1
//ADD ACC, 0
//OUTA 0
//JPI 0:0:0

};

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


//***************************************************************************************************************************************************************
//***************************************************************************************************************************************************************
//***************************************************************************************************************************************************************

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
  
  // Set Data pins to OUTPUT (Write Operation)
  for (int i = 0; i < sizeof(dbArray)/sizeof(int); i++){
    pinMode(dbArray[i], OUTPUT);
  }

}

void loop() {
  //iterate through word array holding data to be written
  for (int i = 0; i < sizeof(program_dat)/sizeof(word); i++){

    //addrWrite(i); //write current position of array to address lines
    dataWrite(program_dat[i]); //write data at current position of array to data lines

    IncPC(); // Finish Write and Increment PC
    
    digitalWrite(WE, HIGH); //disable chip write enable

  }
  
  digitalWrite(LED, HIGH);
 
  digitalWrite(WE, HIGH); //disable chip write enable

//************************************

  //set chip WE to read, and oe to output mode
  digitalWrite(WE, HIGH);
  digitalWrite(OE,LOW);

  //read back rom contents and print them out
  readRom();

  //infinite loop to avoid going back to beginning
  while(1){}

}

void dataWrite(int data){
  //make sure chip is disabled, as well as write
  digitalWrite(WE, HIGH);
  //digitalWrite(cs, HIGH);
  
  int dat = data;

  //convert data into binary value, write value to data lines
  for(int i = 0; i<=15; i++){
   
    if((dat & 1) == 1){
      digitalWrite(dbArray[i], HIGH);
    }
    else{
      digitalWrite(dbArray[i], LOW);
    }
    dat = dat >> 1;
 
  }
  delay(5); //delay so things settle
  //enable chip, and latch values in data lines onto chip
  //digitalWrite(cs, LOW); 
  digitalWrite(WE, LOW);
}

//function that reads a value from ROM wherever address lines are pointing to
void dataRead(){
  //digitalWrite(cs, LOW); //.......................
  digitalWrite(WE, HIGH); //.......................

  //read binary data value at address lines, store binary stream in an array
  for(int i = 0; i<=15; i++){
   
    if((digitalRead(dbArray[i])) == HIGH){
      read_data[i]=1;
    }
    else{
      read_data[i]=0;
    }
   
  }
  delay(2);

  //perform bit shifting magic to convert acquired binary stream into an int
  int readValue = 0x0000;
  int myPow = 1;
  for(int i = 0; i < 16; i++){
    readValue += (read_data[i]*myPow);
    myPow = myPow*2;
  }

  //print out converted value in HEX format
  Serial.println(readValue, HEX);
  Serial.println();

  //disable chip, disable write
  //digitalWrite(cs, HIGH); //.......................
  digitalWrite(WE, HIGH);

}

//function that simply reads out contents of rom for visual verification
void readRom(){
  //make sure chip and read disabled
  //digitalWrite(cs, HIGH);
  
  ResetPC(); // Reset PC to Read back the words written to MikroLeo Program Memory
  
  digitalWrite(WE, HIGH);

  //address pins remain outputs, but data pins are now inputs. DONT FORGET TO CONFIGURE ANY NEWLY ADDED ADDRESS PINS HERE
  //for (int i = 0; i < sizeof(abArray)/sizeof(int); i++){
  //  pinMode(abArray[i], OUTPUT);
  //}

  // Data pins are now inputs
  for (int i = 0; i < sizeof(dbArray)/sizeof(int); i++){
    pinMode(dbArray[i], INPUT);
  }

  digitalWrite(WE, HIGH); 
  //digitalWrite(cs, LOW);

    Serial.println("************************");
    delay(100);
      for (int i = 0; i < sizeof(program_dat)/sizeof(word); i++){
        //addrWrite(i);
        dataRead();

        IncPC(); // Increment PC
      }
    Serial.println("************************");
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
