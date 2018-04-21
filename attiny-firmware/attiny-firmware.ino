#define TASKER_MAX_TASKS 2
#include "Tasker.h"

Tasker tasker;

byte buttonPressed = 0x00;
byte iCmdCode = 0x00;
byte iArgument = 0x00;
byte iStep = 0;

void setup() {
  DDRB = 0x03 | 0x04; // loads | RF SW
  PORTB = 0x00 | 0x04; // loads | RF SW

  DDRA = 0x00;
  PUEA = 0x0f;

  GIMSK |= _BV(PCIE0);
  PCMSK0 = _BV(PCINT0) | _BV(PCINT1) | _BV(PCINT2) | _BV(PCINT3);

  Serial1.begin(19200);
}

ISR(PCINT0_vect) { 
  //cli();

  byte state = PINA & 0x0f;
  if (state) {
//    byte patch = bitRead(state, 3) | bitRead(state, 0) | (bitRead(state, 2) << 1) | (bitRead(state, 1) << 1);
//    buttonPressed = patch;
    buttonPressed = state;
  }

  //sei();
}

void loop() {
  tasker.loop();
  
  if (buttonPressed) {
    Serial1.write(0xA0);
    Serial1.write(0x04);
    Serial1.write(buttonPressed); 
    Serial1.write(0xA1);
    Serial1.flush();
    buttonPressed = 0x00;
  }
  
  if (Serial1.available()) {
    // read the incoming byte:
    byte incomingByte = Serial1.read();

    if (incomingByte == 0xA0) {
      iStep = 1;
    }
    else if (iStep == 1) {
      iStep = 2;
      iCmdCode = incomingByte;
    }
    else if (iStep == 2) {
      iStep = 3;
      iArgument = incomingByte;
    } else if ((iStep == 3) && (incomingByte == 0xA1)) {
      iStep = 0;
      if (iCmdCode == 0x04) { // power
        PORTB = (PORTB & 0x0C) | (iArgument & 0x03);
      }
      else if (iCmdCode == 0xF1) { // bind
        start_bind();
      }
      else if (iCmdCode == 0xF2) { // clear
        start_clear();
      }
    } else iStep = 0;
  }
}

void start_bind() {
  PORTB &= ~0x04;
  tasker.setTimeout(release_rf_sw, 2500);
}

void start_clear() {
  PORTB &= ~0x04;
  tasker.setTimeout(release_rf_sw, 9000);
}

void release_rf_sw() {
  PORTB |= 0x04;
}

