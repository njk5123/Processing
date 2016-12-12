void setup()
  {
size(720, 640);
smooth();
  }
  void draw(){
    {
fill(255,255,0);
arc(240, 320, 200, 200, QUARTER_PI, TWO_PI-QUARTER_PI);
  }
  {
fill(0);
ellipse( 240, 280, 20, 20);
fill(255);
ellipse(320, 320, 50, 50);
fill(255,0,0);
ellipse(400, 320, 50, 50);
fill(255, 128, 0);
ellipse(480, 320, 50, 50);
fill(255,255,0);
ellipse(560, 320, 50, 50);
fill(0,255,0);
ellipse(560, 240, 50, 50);
fill(0,0,255);
ellipse(560, 160, 50, 50);
fill(0,0,128);
ellipse(560, 80, 50, 50);
fill(0,0,64);
ellipse(560, 0, 50, 50);}
  }