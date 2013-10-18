/**
 * Load and Display 
 * 
 * Images can be loaded and displayed to the screen at their actual size
 * or any other size. 
 */
 
// The next line is needed if running in JavaScript Mode with Processing.js
/* @pjs preload="moonwalk.jpg"; */ 

PImage img;  // Declare variable "a" of type PImage
int iColor = 50;
int delta = 1;
boolean boolFlag = false;

void setup() {
  size(490, 435);
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img = loadImage("ThinkPad.JPG");  // Load the image into the program 
}

void draw() {
  // Displays the image at its actual size at point (0,0)
  image(img, 0, 0);
  if(boolFlag)
  {
    if(iColor == 40){
      delta = 1;
    }
    if(iColor == 200){
      delta = -1;
    }
    iColor = iColor + delta;
    fill(iColor,iColor,iColor);
    textSize(24);
    text("lenovo",width/7,height/2,-30);  //Draw lenovo
    fill(iColor + 25,0,0);   //Draw ThinkPad
    ellipse(60, 88, 6, 6);
  }
}

void mousePressed()
{
  if(boolFlag){
    boolFlag = false;
  }
  else{
    boolFlag = true;
  }
}
