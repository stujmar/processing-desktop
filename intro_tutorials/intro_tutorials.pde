// Example: Two Car objects
Car myCar1;
Car myCar2;
Tree tree1;
Tree tree2;

void setup() {
  size(300,300);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(255,0,0),0,100,2); 
  myCar2 = new Car(color(0,0,255),0,80,-1);
  tree1 = new Tree(50,200,50);
  tree2 = new Tree(25, 150, 25);
}

void draw() {
  background(150,200,35);
  fill(150);
  rect(150, 80, 305, 15);
  rect(150, 100, 305, 15);
  tree1.display();
  tree2.display();
  tree2.cluster(mouseX, mouseY);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();
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
    rectMode(CENTER);
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
  
    // The Constructor is defined with arguments.
  Tree(float xPos, float yPos, float treeSize) { 
    this.treeSize = treeSize;
    this.xPos = xPos;
    this.yPos = yPos;
  }
  
   void display() {
    stroke(0);
    fill(100,255,100);
    ellipse(xPos,yPos,treeSize, treeSize);
  }
  
  void cluster(float xPos, float yPos) {
    for (int i = 0; i < 8; i++) {
      float r = random( treeSize - 10, treeSize + 10);
      float pos = random( -25, 25);
      ellipse(xPos + (i * 10),yPos + pos, r, r);
    }
  }
}
