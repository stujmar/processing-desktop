void setup() {
  size(400,400);
  background(0,0,0);
}

void draw() {
  int ballSize = 50;
  fill(255,255,255);
  ellipse(mouseX, mouseY, ballSize, ballSize);
}
