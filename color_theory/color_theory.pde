void setup(){
  size(450,450);
  background(255);
}

void draw() {
  stroke(0);
  fill(255,0,0,50);
  ellipse(mouseX, mouseY, 100,100);
  fill(0,255,0,50);
  ellipse(225, 255, 100,100);
  stroke(5);
  line(mouseX, mouseY, pmouseX, pmouseY);
}
