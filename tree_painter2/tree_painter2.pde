Car myCar1;
Car myCar2;
Tree tree;
boolean treeMode;
boolean refresh;
ArrayList<Tree> treeClick = new ArrayList<Tree>();
// To hold a single tree or a cluster.
ArrayList<ArrayList<Tree>> treeArray = new ArrayList<ArrayList<Tree>>();

void setup() {
  boolean treeMode = true;
  boolean refresh = true;
  rectMode(CENTER);
  size(400,400);
  background(150,200,35);
  // Parameters go inside the parentheses when the object is constructed.
  myCar1 = new Car(color(255,0,0),0,100,2); 
  myCar2 = new Car(color(0,0,255),0,80,-1);
}

void mouseClicked() {
  if (mouseY > 20) { //add a tree.
  float treeSize = random(15,25);
  color c = color(random(80,150), random(220,255), random(90,110)); 
  treeClick.clear();
  treeClick.add(new Tree(mouseX, mouseY, treeSize, c, false));
  treeArray.add(treeClick); 
  } else if (mouseX > 250 && mouseY < 20){
    treeMode = !treeMode;
  } else if (mouseX < 75 && mouseY < 20) { //Clear
      print("clear");
      treeClick = new ArrayList<Tree>();
  } else if (mouseX > 75 && mouseX < 150 && mouseY < 20 && treeClick.size() > 0)
  treeClick.remove(treeClick.size() - 1);
  refresh = true;
}

void draw() {
  if (refresh) {
   drawFromArray();
  }
 
  drawToggle(treeMode, "one", 250,0);
  drawToggle(treeMode, "cluster", 325,0);
  fill(255);
  rectMode(CORNER);
  rect(0,0, 75, 20);
  rect(75, 0, 75, 20);
  fill(0);
  textSize(12);
  text("clear", 20, 15);
  text("undo", 20 + 75, 15);

  fill(150);
  rect(-2, 80, width + 5, 15);
  rect(-2, 100, width + 5, 15);
  myCar1.drive();
  myCar1.display();
  myCar2.drive();
  myCar2.display();


  //if (mousePressed && mouseX < 40 && mouseY < 20) {
  //  background(150,200,35);
  //} else if (mousePressed && mouseX > 250 && mouseY < 20){

  //} else if (mousePressed) {
       
  //}


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
  float xPos;
  float yPos;
  float treeSize;
  color colorValue;
  boolean cluster;
  
    // The Constructor is defined with arguments.
  Tree(float xPos, float yPos, float treeSize, color colorValue, boolean cluster) { 
    this.treeSize = treeSize;
    this.xPos = xPos;
    this.yPos = yPos;
    this.colorValue = colorValue;
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
  background(150,200,35);
  if (treeClick.size() > 0) {
  fill(255,0, 0);
  for (int i = 0; i < treeClick.size(); i++) {
       noStroke();
       //fill(130,180,15);
       fill(0,0,0,25);
       ellipse(treeClick.get(i).xPos - 5, treeClick.get(i).yPos + 5, treeClick.get(i).treeSize, treeClick.get(i).treeSize);
  } 
     stroke(0);
     
  for (int i = 0; i < treeClick.size(); i++) {
       fill(treeClick.get(i).colorValue);
       ellipse(treeClick.get(i).xPos, treeClick.get(i).yPos, treeClick.get(i).treeSize, treeClick.get(i).treeSize);
  } 
  } 
  refresh = false;
}

void drawFromNestedArray(){

}

 void paint(float mouseX, float mouseY, boolean cluster) {
  if (!cluster) {
    //add a single tree to array
  } else {
    // add a cluster of trees to the array
  }
}
