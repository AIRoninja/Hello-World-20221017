//Global Variables
int appWidth, appHeight;
//
void setup() {
  //Declaring Display Geometry: landscape, square, portrait
  size(700, 400); //Able to deploy with fullScreen();
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Concatenation: , or + (i.e space)
  println("\t\t\tWidth="+width, "\tHeight="+height);
  println("Display Monitor:", "\twidth:"+displayWidth, "\theight:"+displayHeight);
  //
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phun";
  //
  if ( appWidth < appHeight ) { //Declaring Landscape & square
    println(instruct);
  } else {
    println("Display: Good to Go");
    if ( appWidth > displayWidth ) { //Fitting CANVAS into Monitor Display
      appWidth=0;
      appHeight=0;
      println("STOP, is broken");
    } else {
      //Empty ELSE
    }
  }
} //End setup
//
void draw() {
  ellipse(350, 200, 400, 400);
  ellipse(350, 200, 350, 350);
  ellipse(350, 200, 300, 300);
  ellipse(350, 200, 250, 250);
  ellipse(350, 200, 200, 200);
  ellipse(350, 200, 150, 150);
  ellipse(350, 200, 100, 100);
  ellipse(350, 200, 50, 50);
  ellipse(350, 200, 15, 15);
  ellipse(350, 200, 1, 1);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
// End Main Program
