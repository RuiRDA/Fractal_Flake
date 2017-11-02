
boolean collor = true;

void setup() {
  fullScreen();
  //size(800, 600);
  stroke(0);
  strokeWeight(2);
  frameRate(2);
  colorMode(HSB, 100);
}

void draw() {
  background(100, 0, 0);
  translate(width / 2, height / 2);
  //flake(second());
  flake(12);

  println(frameRate +"\t"+ second());
}

void flake(int npoints ) {
  float angle = TWO_PI / npoints;

  for (float a = 0; a < npoints; a++) {
    pushMatrix();

    float x = 100 * cos(a * angle - PI/2);
    float y = 100 * sin(a * angle - PI/2);
    translate(x, y);

    if (collor) {
      stroke(a* 100 / npoints, 100, 100);
    }
    rotate(a * angle);

    drawFlakePoint();
    popMatrix();
  }
}


void drawFlakePoint() {
  drawLine(0, 50, 300);
  scale(1, -1);
  translate(0, -100);
  drawLine(0, 50, 300);
}

void drawLine(int xCenter, int y, int lenght) {
  if (lenght > 1) {

    int x1 = xCenter - lenght/2;
    int x2 = xCenter + lenght/2;
    line(x1, y, x2, y);

    int newXright = xCenter + lenght/2;
    int newXleft = xCenter - lenght/2;
    int newY = y - y / 2;
    int newL = lenght / 2;

    drawLine(newXright, newY, newL);
    drawLine(newXleft, newY, newL);
  }
}