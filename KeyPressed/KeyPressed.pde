//Global Variables
boolean nightmode=false;
//
void setup() {
  
}//End setup
//
void draw() {
  if ( nightmode==true ) println("I am nocturnal");
  if ( nightmode==false ) println("you can not see me");
}//End draw
//
void keyPressed() {
  if ( key == 'N' || key =='n' ) nightmode=true;
  if ( key == CODED && keyCode == LEFT ) nightmode=false;
}//End keyPressed
//
void mousePressed() {
  
}//End mousePressed
//
//End Main Program
