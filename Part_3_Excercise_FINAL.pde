//Nick Kim January 12 2017


//To move use the arrow keys
//press "1" for color scheme one
//press "2" for color scheme two
//hold shift to open eyes and move cursor around to have eyes follow

int x=100;
int y=30;
int a=6;
int b =191;

float radius= 3;

void setup()
{
  size(480, 480);
  smooth();
  
}

void draw()
{
   if (keyPressed && (key == CODED)) {  // If it’s a coded key
    if (keyCode == LEFT) {
      x-=10;
    }
    else if (keyCode == RIGHT) {
      x+=10;
    }
    else if (keyCode == DOWN) {
      y+=10;
    }
    else if (keyCode == UP) {
      y-=10;
    }
    
    
  
  background(255);      //Refreshes every frame  
  
  noStroke();                        
  fill(a,b,b+22);
  ellipse(x+290,y+110,80,80);
  fill(b,a,a+3);
  ellipse(x+240,y+105,80,80);
  fill(227,b-27,a-4);
  ellipse(x+190, y+110,80,80);
  fill(a-4,a+1,b+36);
  ellipse(x+140,y+90,80,80);
  fill(b+36,a-4,b+25);
  
    stroke(1);                     
  strokeWeight(8);            //caterpillar's right arm
  strokeJoin(ROUND);
  line(x+90,y+70, x+60, y+130);
  
  noStroke();
  ellipse(x+90,y+70,80,80);  //pink section          
  fill(a,b,a+22);
  ellipse(x+40,y+50,80,80);  //head (green section)
  
  stroke(1);
  strokeWeight(8);
  strokeJoin(ROUND);                
  line(x+110, y+90, x+90, y+150);
  
  strokeCap(SQUARE);                  
  fill(0);
  ellipse(x+60, y+40, a,a);
  ellipse(x+20, y+40,a,a);
  beginShape();
  vertex(x+60,y+60);
  vertex(x+20,y+60);
  vertex(x+40,y+64);
  endShape(CLOSE);  // //shows the caterpillar when no button is pressed (end) 
    
   }
   
     if (keyPressed) {
       if (key == '1'){
         background(255);
strokeWeight(10);                  //antennae
  line(x+20,y+30, x, y);
  line(x+60,y+30, x+80, y);
  
  noStroke();                        //body
  fill(237,5,5);
  ellipse(x+290,y+110,80,80);
  fill(8 ,191,61);
  ellipse(x+240,y+105,80,80);
  fill(2,75,227);
  ellipse(x+190, y+110,80,80);
  fill(234,223,2);
  ellipse(x+140,y+90,80,80);
  fill(225,188,3);
  
    stroke(1);                      //right arm
  strokeWeight(8);
  strokeJoin(ROUND);
  line(x+90,y+70, x+60, y+130);
  
  noStroke();
  ellipse(x+90,y+70,80,80);            //pink section
  fill(135,2,28);
  ellipse(x+40,y+50,80,80);
  
  stroke(1);
  strokeWeight(8);
  strokeJoin(ROUND);                //left arm
  line(x+110, y+90, x+90, y+150);
  
  strokeCap(SQUARE);                  //face
  fill(0);
  ellipse(x+60, y+40, 6,6);              //right eye
  ellipse(x+20, y+40,6,6);                //left eye
  beginShape();
  vertex(x+60,y+60);
  vertex(x+20,y+60);
  vertex(x+40,y+64);
  endShape(CLOSE);       }
       if (key == '2') {
         background(255);
strokeWeight(10);                  //antennae
  line(x+20,y+30, x, y);
  line(x+60,y+30, x+80, y);
  
  noStroke();                        //body
  fill(b-65,a-4,a+2);
  ellipse(x+290,y+110,80,80);
  fill(a-2,a,a+3);
  ellipse(x+240,y+105,80,80);
  fill(18,162,156);
  ellipse(x+190, y+110,80,80);
  fill(223,37,227);
  ellipse(x+140,y+90,80,80);
  fill(200,a+6,46);
  
    stroke(1);                      //right arm
  strokeWeight(8);
  strokeJoin(ROUND);
  line(x+90,y+70, x+60, y+130);
  
  noStroke();
  ellipse(x+90,y+70,80,80);            //pink section
  fill(67,a-5,255);
  ellipse(x+40,y+50,80,80);
  
  stroke(1);
  strokeWeight(8);
  strokeJoin(ROUND);                //left arm
  line(x+110, y+90, x+90, y+150);
  
  strokeCap(SQUARE);  //face
  fill(0);
  ellipse(x+60, y+40, a,a);
  ellipse(x+20, y+40,a,a);
  beginShape();
  vertex(x+60,y+60);
  vertex(x+20,y+60);
  vertex(x+40,y+64);
  endShape(CLOSE);      
}

   
   float mx= map(mouseX,0,width,x+57,x+63); 
      float my= map(mouseY,0,width,y+37,y+43); 
    
    if((mouseX<width) && (mouseX>0)&&(mouseY<height) && (mouseY>0)){
      fill(255);
      noStroke();
      ellipse(mx,my, 4,4);
    }
     
   
    float mxx= map(mouseX,0,width,x+17,x+23); 
      float myy= map(mouseY,0,width,y+37,y+43); 
    
    if((mouseX<width) && (mouseX>0)&&(mouseY<height) && (mouseY>0)){
      fill(255);
      noStroke();
      ellipse(mxx,myy, 4,4);
    }   
  }  
}         //end of entire loop