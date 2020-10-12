void setup() {
  //size(400,400);
  fullScreen(SPAN);
  pixelDensity(2);
  frameRate(240);

  background(0,5,0);
}

void draw() {
  int ballSize = 50;
  
  stroke(0,0,0,0);
  if (mousePressed) {
  fill(255,255,255);    
  } else {
  fill(0,0,0);
  }
  ellipse(mouseX, mouseY, ballSize, ballSize);
}
