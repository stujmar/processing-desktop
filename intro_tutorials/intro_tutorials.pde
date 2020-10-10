//My first Sketch
void setup() {
  size(500, 500);
}

void draw () {
  background(255,220 + (mouseX * .068),255);
  stroke(120,155,255);
  strokeWeight(5);
  fill(255,100,20);
  rect(250, 200, 150, 100);
  rect(150, 100, 50, 50);
  ellipse(mouseX ,mouseY + 35, 50,50);
}
