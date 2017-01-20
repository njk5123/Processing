//Nick Kim      January 20, 2017
int radius=40;
float x= -radius;
float speed =8;
void setup(){
  size(240,120);
  smooth();
  ellipseMode(RADIUS);
}
void draw(){
  background(0);
  x+=speed;                                            //increase x-value
  if (x>width+radius) {                                //If the shape is off screen
    x=-radius;                                         //move to the left edge
  }
  
  fill(x+24,120,x+64);                                 //color changes gradient
  arc(x,60,radius,radius, 0.52, 5.76);
}