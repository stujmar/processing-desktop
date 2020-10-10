//My first Sketch
void setup() {
  size(500, 500);
}

void draw () {
    if (mouseX > 350) {
    background(0,0,0);
  } else {
     background(255,220 + (mouseX * .068),255); 
  }
  
  if (mousePressed) {
  ellipse(mouseX ,mouseY, 55,55);
  } else {
  ellipse(mouseX ,mouseY, 50,50);
  }
 
  stroke(120,155,255);
  strokeWeight(5);
  fill(255,100,20);
  rect(250, 200, 150, 100);
  rect(150, 100, 50, 50);
  

}
