
byte buttonPressed = 0x00;
byte iNewState = 0x00;
byte iStep = 0;

void setup() {
  DDRB = 0x03;
  PORTB = 0x01;

  DDRA = 0x00;
  PORTA = 0x0f;

  GIMSK |= _BV(PCIE0);
  PCMSK0 |= _BV(PCINT0) | _BV(PCINT1) | _BV(PCINT2) | _BV(PCINT3);

  Serial1.begin(19200);
}

ISR(PCINT0_vect) { 
  //cli();

  byte state = PINA & 0x0f;
  if (state) {
    byte patch = bitRead(state, 3) | bitRead(state, 0) | (bitRead(state, 2) << 1) | (bitRead(state, 1) << 1);
    buttonPressed = patch;
  }

  //sei();
}

void loop() {
  if (buttonPressed) {
    Serial1.write(0xA0);
    Serial1.write(0x04);
    Serial1.write(buttonPressed); 
    Serial1.write(0xA1);
    Serial1.flush();
    buttonPressed = 0x00;
  }
  while (Serial1.available()) {
    // read the incoming byte:
    byte incomingByte = Serial1.read();

    if (incomingByte == 0xA0) {
      iStep = 1;
    }
    else if ((iStep == 1) && (incomingByte == 0x04)) {
      iStep = 2;
    }
    else if ((iStep == 2) && (incomingByte >= 0) && (incomingByte <= 3)) {
      iStep = 3;
      iNewState = incomingByte;
    } else if ((iStep == 3) && (incomingByte == 0xA1)) {
      iStep = 0;
      PORTB = iNewState & 0x03;
    } else iStep = 0;
  }
}
