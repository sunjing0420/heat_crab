import processing.serial.*;

import cc.arduino.*;

Arduino arduino;


int red;
int green;
int blue;
color currentColor = color(red, green, blue);

void setup() {

  size(500, 500);
  background(255);

  // Prints out the available serial ports.
  println(Arduino.list());

  // Modify this line, by changing the "0" to the index of the serial
  // port corresponding to your Arduino board (as it appears in the list
  // printed by the line above).
  arduino = new Arduino(this, Arduino.list()[1], 57600);

  // Alternatively, use the name of the serial port corresponding to your
  // Arduino (in double-quotes), as in the following line.
  //arduino = new Arduino(this, "/dev/tty.usbmodem621", 57600);

}
  void draw() {
    red=150;
    green=150-arduino.analogRead(0)/10;
    blue=150-arduino.analogRead(0)/10;
    currentColor = color(red, green, blue);

    noStroke();
    fill(currentColor);
    ellipse(250, 250, 250, 200);
    ellipse(100, 100, 100, 100);
    ellipse(400, 100, 100, 100);
    ellipse(220, 100, 40, 40);
    ellipse(280, 100, 40, 40);
    rect(215, 100, 10, 60);
    rect(275, 100, 10, 60);

    rect(80, 210, 340, 15);
    rect(70, 245, 360, 15);
    rect(90, 280, 320, 15);
    rect(120, 310, 260, 15);

    rect(90, 180, 320, 15);
    rect(90, 150, 15, 40);
    rect(395, 150, 15, 40);

    fill(255);
    triangle(50, 0, 150, 0, 100, 100);
    triangle(350, 0, 450, 0, 400, 100);
  
  }