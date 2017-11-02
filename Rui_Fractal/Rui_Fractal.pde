
void setup() {
  fullScreen();
  //size(800, 600);
  stroke(0);
  strokeWeight(1);
}

void draw() {
  background(255);
  translate(width / 2, height / 2);
  scale(3);  
  //drawLine(0, 50, 300);
  drawFlakePoint();
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