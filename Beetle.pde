class Beetle{
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float speed=2.5;

  Beetle(float tempx1, float tempy1, float tempx2, float tempy2, float tempx3, float tempy3){
    x1=  tempx1;
    y1=  tempy1;
    x2=  tempx2;
    y2=  tempy2;
    x3=  tempx3;
    y3=  tempy3;
  } 
  
  void moveBeetle(){
    x1+=random(-speed, speed);
    y1+=random(-speed, speed);
    x2+=random(-speed, speed);
    y2+=random(-speed, speed);
    x3+=random(-speed, speed);
    y3+=random(-speed, speed);
  }
  void displayBeetle(){
    triangle( x1,y1,x2,y2,x3,y3);
}
}