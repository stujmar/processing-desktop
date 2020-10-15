void setup(){
  size(450,450);
  background(255);
}

void draw() {
  stroke(0);
  fill(0,255,0,50);
  ellipse(225, 255, 100,100);
  if (mousePressed) {
    fill(255,0,0,50);
    ellipse(mouseX, mouseY, 15,15);
  } else {
    fill(0,0,255,50);
    ellipse(mouseX, mouseY, 10,10);
  }
  stroke(15);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
