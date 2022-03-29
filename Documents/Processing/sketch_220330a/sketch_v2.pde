/*
 *
 * Sketch v1
 *
 */

int dim;

void setup() {
  size(1000, 1000, P3D);
  dim = width*2;
  background(0);
  colorMode(HSB, 100, 100, 100);
  noStroke();
  ellipseMode(RADIUS);
  frameRate(1);
//  frameRate(144);
}

void draw() {
  background(0);
  for (int x = 0; x <= width; x+=dim) {
    drawGradient(x, height/2);
  } 
}

void drawGradient(float x, float y) {
  int radius = dim/16;
  float h = random(-50, 50);
//  float h = 90;
  for (int r = radius; r > 0; --r) {
//    fill(h, 255, 255, random(0, 10));
    fill(h, 255, 255, 10);
    ellipse(x+500, y, r+random(0,100), r+random(0,100));
    h = (h + 1) % 360;
//    h = (h + 4) % 360;
//    h = (h + 8) % 360;
  }
}
