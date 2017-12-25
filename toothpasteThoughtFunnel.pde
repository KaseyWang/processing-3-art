// A visual representation of how thoughts are gathered and then appear.

boolean recording = false;

static final int NUM_LINES = 16;

float t;

void setup() {
  background(20);
  size(700, 700);
}

void keyPressed () {
  if (key == 'r' || key == 'R') {
    recording = !recording;
  }
}

void draw() {
  background(20);
  stroke(100,200,200,200);
  strokeWeight(3);
  translate(width/2, height/2);
  frameRate(90);


  for (int i = 0; i < NUM_LINES; i++) {
    line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
  }
  //point(x1(t), y(t));
  //point(x2(t), y2(t))
  t += 0.05;


if (recording) {
  saveFrame("output/windows95_####.png");
  fill(0,255,0);
} else {
  fill(255, 0, 0);
}
}


float x1(float t) {
  return -cos(t) * 100 + sin(t)+0;
}

float y1(float t) {
  return sin(t / 2) * 50 + sin(t / 10) * 200;
}

float x2(float t) {
  return sin(t) * 10 + sin(t) * 6;
}

float y2(float t) {
  return cos(t / 100) * 12 + cos(t) * 15;
}
