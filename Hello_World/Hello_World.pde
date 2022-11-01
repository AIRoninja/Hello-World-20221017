//Global Variables
int appWidth, appHeight;
float centerX, centerY, xStart, yStart, widthRect, heightRect;
color blackNightMode=#000000, yellow=#F8FC64, green=#00FF0E, white=#FFFFFF; //Hexidecimal
color yellowNightMode=#F8FC00, greenNightMode=#04790A;
float thin, normal, thick;
Boolean nightMode=false, randomBackground=false, grayScale=false, backgroundColour=false;
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
  //Population
  centerX = appWidth * 1/2;
  centerY = height * 1/2;
  xStart = centerX - ( appWidth * 1/4 );
  yStart  = centerY - ( height * 1/4 );
  widthRect = appWidth * 1/2;
  heightRect = height * 1/2;
  thin = appWidth / appWidth; //1
  normal = appWidth * 1/70;
  thick = appWidth * 1/35;
} //End setup
//
void draw() {
  // New Background Function "covers" old gray scale background()
  // Night Mode means background cannot have blue // change randome for night mode, hard code "0"
  if ( grayScale == true ) background(100); //Gray Scale (0-255) & Blue Issue for night mode
  //
  //Casting Reminder
  if (backgroundColour == true ) background( color( 181 ,193 ,186 ) ); // Colour without blue
  //
  if ( nightMode == true)
  {
  background( blackNightMode );
  stroke( yellowNightMode );
  fill( greenNightMode );
  } else {
  stroke( yellow );
  fill( green );
  }
  //background( blackNightMode );
  strokeWeight( thick );
  rect(xStart, yStart, widthRect, heightRect);
  
  ellipse(250, 200, 1, 1);
  
  ellipse(350, 200, 1, 1);
  ellipse(365, 210, 1, 1);
  ellipse(365, 190, 1, 1);
  ellipse(380, 200, 1, 1);
  ellipse(380, 220, 1, 1);
  ellipse(380, 180, 1, 1);
  ellipse(400, 230, 1, 1);
  ellipse(400, 210, 1, 1);
  ellipse(400, 190, 1, 1);
  ellipse(400, 170, 1, 1);
  ellipse(420, 200, 1, 1);
  ellipse(420, 180, 1, 1);
  ellipse(420, 220, 1, 1);
  ellipse(420, 240, 1, 1);
  ellipse(420, 160, 1, 1);
  fill( white ); //default reset
  stroke( blackNightMode ); //default reset
  strokeWeight(1); //default reset
} //End draw
//
void keyPressed() {
  grayScale = false;
  if ( key == 'G' || key == 'g') grayScale = true;
  if ( key == 'B' || key == 'b')backgroundColour = true;
} //End keyPressed
//
void mousePressed() {
  if (mouseButton == LEFT) nightMode = true;
  if (mouseButton == RIGHT) nightMode = false;
} //End mousePressed
//
// End Main Program
