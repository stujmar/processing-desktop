Car myCar1;
Car myCar2;
Tree tree;
boolean treeMode;
ArrayList<Tree> treeList = new ArrayList<Tree>();

void setup() {
  boolean treeMode = true;
  rectMode(CENTER);
  size(400,400);
  background(150,200,35);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(255,0,0),0,100,2); 
  myCar2 = new Car(color(0,0,255),0,80,-1);
  tree = new Tree(50,200,50, false);
}

void mouseClicked() {
  treeList.add(new Tree(mouseX, mouseY, 40, false));
  if (mouseX > 250 && mouseY < 20){
    treeMode = !treeMode;
  } else if (treeMode) {
        float tempSize = random(5,25);
      fill(random(80,150), random(220,255), random(90,110));
      ellipse(mouseX , mouseY, tempSize, tempSize);
  }
  print(treeList);
}

void draw() {

  drawToggle(treeMode, "one", 250,0);
  drawToggle(treeMode, "cluster", 325,0);
  fill(255);
  rect(5, 10, 75, 20);
  fill(0);
  textSize(12);
  text("clear", 5, 15);

  fill(150);
  rect(width/2, 80, width + 5, 15);
  rect(width/2, 100, width + 5, 15);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
  drawFromArray();

  if (mousePressed && mouseX < 40 && mouseY < 20) {
    background(150,200,35);
  } else if (mousePressed && mouseX > 250 && mouseY < 20){

  } else if (mousePressed) {
    //tree.cluster(mouseX, mouseY);  
  }


}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class Car { 
  color c;
  float xpos;
  float ypos;
  float xspeed;

  // The Constructor is defined with arguments.
  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
  }

  void display() {
    stroke(0);
    fill(c);
    rect(xpos,ypos,20,10);
  }

  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    } else if (xpos < 0) {
      xpos = width;
    }
  }
}

class Tree {
  float treeSize;
  float xPos;
  float yPos;
  boolean cluster;
  
    // The Constructor is defined with arguments.
  Tree(float xPos, float yPos, float treeSize, boolean cluster) { 
    this.treeSize = treeSize;
    this.xPos = xPos;
    this.yPos = yPos;
    this.cluster = cluster;
  }
  
}

void drawToggle(boolean treeMode, String name, int x, int y) {
  rectMode(CORNER);
  if ((treeMode && name == "one") || (!treeMode && name == "cluster")) {
  fill(255,0,255);
  } else {
  fill(255);
  }
  rect(x,y, 75, 20);
  fill(0);
  text(name, x + 5, y + 15);
  rectMode(CENTER);
}

void drawFromArray(){
   
}

 void paint(float mouseX, float mouseY, boolean cluster) {
  if (!cluster) {
    //add a single tree to array
  } else {
    // add a cluster of trees to the array
  }
}
