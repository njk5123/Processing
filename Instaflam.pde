//Nick Kim May 1, 2017
//Instructions: Filters- press r for red, press g for green, press b for blue, press o for orange
//Press and hold the mouse to scale the image up and down
//Press 1 to rotate the image left, Press 2 to rotate the image right

PImage img;
float jetX = 270;
float jetY = 174;
float rotateAngle= 0.0;
PFont  font;

void setup(){
  size(540,540);
  img = loadImage("101883140-5438832203_da6d83ccd6_o.530x298.jpg");
  font = loadFont("BodoniSvtyTwoITCTT-BookIta-48.vlw");
  textFont(font);
}

void draw(){
  background(255);
  imageMode(CENTER);
  textSize(46);
fill(0);
  text("InstaFlam", 180, 470);
  rotate (rotateAngle);
  image (img, jetX, jetY, 500, 268);
  
  if (mouseX<530||mouseY<298){
   if (mousePressed == true) {
     background (255);
     image (img, jetX, jetY, mouseX, mouseY);
       textSize(46);
       fill(0);
       text("InstaFlam", 180, 470);
     }
   }
  
   if (keyPressed==true){
     if (key=='1'){
       background(255);
       image (img, jetX, jetY, 500, 268);
       rotateAngle-=.01;
     }
     else if (key =='2'){
       background(255);
       image (img, jetX, jetY, 500, 268);
       rotateAngle+=.01;
     }
     
     else if(( key== 'r')||(key=='R')){
       fill(255,0,0,100);
         strokeWeight(0);
         rectMode(CENTER);
       rect(jetX,jetY, 500,268);
     }
     else if((key=='g')||(key=='G')){
       fill(0,255,0,100);
         strokeWeight(0);
         rectMode(CENTER);
       rect(jetX,jetY, 500,268);
     }
     else if ((key=='b')||(key=='B')){
       fill(0,0,255,100);
         strokeWeight(0);
         rectMode(CENTER);
       rect(jetX,jetY, 500,268);
     }
     else if ((key=='o')||(key=='O')){
       fill(255,201,3,100);
         strokeWeight(0);
         rectMode(CENTER);
       rect(jetX,jetY, 500,268);
     }
     
   }// end of if keyPressed
    
} //end of void draw