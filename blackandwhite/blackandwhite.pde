void setup() {
  size(400,400);
  //fullScreen(SPAN);
  frameRate(240);

  background(0,5,0);
}

void draw() {
  int ballSize = 50;
  stroke(255,0,0);
  line(150, 25, 270, 350);
  line(150, 25, mouseX, mouseY);
  stroke(0,0,0,0);
  if (mousePressed) {
  fill(255,255,255);    
  } else {
  fill(0,0,0);
  }
  rect(0,0, 10,10);
  if (mousePressed && mouseX < 10 && mouseY < 10) {
  saveFrame("output.png");
  }
  ellipse(mouseX, mouseY, ballSize, ballSize);
  fill(0, 255, 0);
  ellipse(width/2, height/2, 40,40);
}
