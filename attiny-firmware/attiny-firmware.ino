#define TASKER_MAX_TASKS 2
#include "Tasker.h"
// WALL_SWITCH_MODE should be used when RF block is replaced with wall switch connected to ground and S1-S4 pins
//#define WALL_SWITCH_MODE

Tasker tasker;

volatile byte buttonPressed = 0x00;
#ifdef WALL_SWITCH_MODE
volatile byte state = 0x00;
volatile byte newState = 0x00;
#endif
byte iCmdCode = 0x00;
byte iArgument = 0x00;
byte iStep = 0;

void setup() {
  DDRB = 0x03 | 0x04; // loads | RF SW
  PORTB = 0x00 | 0x04; // loads | RF SW

  DDRA = 0x00;
  PUEA = 0x0f;

  #ifdef WALL_SWITCH_MODE
  state = 0x0f & ~PINA;
  #endif

  GIMSK |= _BV(PCIE0);
  PCMSK0 = _BV(PCINT0) | _BV(PCINT1) | _BV(PCINT2) | _BV(PCINT3);

  Serial1.begin(19200);
}

ISR(PCINT0_vect) {
  #ifdef WALL_SWITCH_MODE
  newState = 0x0f & ~PINA;
  tasker.cancel(fix_state);
  tasker.setTimeout(fix_state, 50);
  #else
  byte state = PINA & 0x0f;
  if (state) {
    buttonPressed = state;
  }
  #endif
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

#ifdef WALL_SWITCH_MODE
void fix_state() {
  buttonPressed = newState ^ state;
  state = newState;
}
#endif

void start_bind() {
  if (PORTB & 0x04) {
    PORTB &= ~0x04;
    tasker.setTimeout(release_rf_sw, 2500);
  }
}

void start_clear() {
  if (PORTB & 0x04) {
    PORTB &= ~0x04;
    tasker.setTimeout(release_rf_sw, 9000);
  }
}

void release_rf_sw() {
  PORTB |= 0x04;
}
