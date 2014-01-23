//Known bugs. Prompt label not appearing under user input box. Would use textfield name property but it shows up white on white background (can't read). Text does not appear when intersecting (likely same issue) so it is commented out, and instead acknowledgement of intersection is shown by incrementing integer in console.
//-Eric Martin, CEO Martin Developments (Author of comment)
import controlP5.*;
import java.awt.Rectangle;
ControlP5 controlP5;
PImage a;
PImage b;
int x;
int y;
int speed = 1;
int value = 0;
int counter = 1;
Textfield userinputTextField;
Button enter;
Button clear;
PFont f;
Rectangle rect1;
Rectangle rect2;
String sentence;


void setup() {
x = 400;
y = 400;
  text("Enter the speed you would like the object to move at. (recommended 1-50)",2,45);
  size(800, 800);
  background(255);
  frameRate(25);
  f = createFont("Arial",9);
  controlP5 = new ControlP5(this);
  a = loadImage("face.png");
  b = loadImage("face2.png");
 enter = controlP5.addButton("Enter",0,100,240,80,20);
 clear = controlP5.addButton("Clear",0,200,240,80,20);
  userinputTextField = controlP5.addTextfield ("",0,0,320,30);
}

void draw() {
  background(255);
  text("Enter the speed you would like the object to move at. (recommended 1-50)",2,45);
  image(a, mouseX, mouseY, 1*a.width, 1*a.height);
  image(b,x, y, 1*b.width, 1*b.height);
  rect1 = new Rectangle(mouseX, mouseY, 50, 50);
  rect2 = new Rectangle(x, y, 50, 50);

  if (rect1.intersects(rect2)) {
    //String sentence = "The rectangles have hit";
    //textFont(f);
    //fill(0);
    //text(sentence, 100, 900);
    counter = counter + 1;
    println(str(counter));
    }  
  
}

void keyPressed() {
  
  if (keyCode == UP) {
    y = y - speed; 
  }

  else if (keyCode == DOWN) {
    y = y + speed;
  }

  else if (keyCode == LEFT) {
    x = x - speed;
  }

  else if (keyCode == RIGHT) {
    x = x + speed;
  }
}


void Enter() {
 speed = Integer.parseInt(userinputTextField.getText());
background(0);
}

void Clear() {
  userinputTextField.setText("");
   speed = 1;
  background(0);
}

