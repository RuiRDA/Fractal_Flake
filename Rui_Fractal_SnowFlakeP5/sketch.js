
function setup() {
  //fullScreen();
  createCanvas(800, 600);
  stroke(0);
  strokeWeight(2);
  frameRate(2);
}

function draw() {
  background(255);
  translate(width / 2, height / 2);
  flake(second());

  console.log(frameRate +"\t"+ second());
}

function flake( npoints) {
  let angle = PI / npoints;

  for (let a = 0; a < npoints; a++) {
    push();

    let x = 50 * cos(a * angle - PI/2);
    let y = 50 * sin(a * angle - PI/2);
    translate(x, y);

    rotate(a * angle);

    drawFlakePoint();
    pop();
  }
}


function drawFlakePoint() {
  drawLine(0, 50, 300);
  scale(1, -1);
  translate(0, -100);
  drawLine(0, 50, 300);
}

function drawLine( xCenter,  y,  lenght) {
  if (lenght > 1) {

    let x1 = xCenter - lenght/2;
    let x2 = xCenter + lenght/2;
    line(x1, y, x2, y);

    let newXright = xCenter + lenght/2;
    let newXleft = xCenter - lenght/2;
    let newY = y - y / 2;
    let newL = lenght / 2;

    drawLine(newXright, newY, newL);
    drawLine(newXleft, newY, newL);
  }
}
