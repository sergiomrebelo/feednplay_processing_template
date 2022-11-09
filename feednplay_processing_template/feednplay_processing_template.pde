color colorBack;
color colorFront;

void settings() {
  fnpSize(500, 500, P2D); // <-- Use this line to replace the typical size() function
  smooth(8);
}

void setup() {
  frameRate(60);
  colorBack = color(random(175, 255), random(175, 255), random(175, 255));
  colorFront = color(random(100, 255), random(100, 255), random(100, 255));
  fnpEndSetup(); // <-- Insert this line at the end of the setup() function
}

void draw() {
  background(colorBack);
  translate(width / 2, height / 2);
  rotate(cos(frameCount / 25f) / 2f);
  strokeWeight(30);
  strokeCap(SQUARE);
  stroke(colorFront);
  float lineLength = width * 0.4;
  line(-lineLength, 0, lineLength, 0);
}
