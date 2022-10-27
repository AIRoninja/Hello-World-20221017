//Global Variables
boolean nightmode=false, ahhh=false;
//
void setup() {
  
}//End setup
//
void draw() {
  if ( nightmode==true ) println("I am nocturnal");
  if ( nightmode==false ) println("");
  if (ahhh == true) println("Where is that mouse-wheel botton");
}//End draw
//
void keyPressed() {
  
}//End keyPressed
//
void mousePressed() {
  if ( mouseButton == LEFT ) nightmode=true;
  if ( mouseButton == RIGHT ) nightmode=false;
  if ( mouseButton == CENTER ) {
    ahhh =true;
  } else {
    ahhh = false;
  }
}//End mousePressed
//
//End Main Program
