void setup()
{
  size(480, 480);
  noStroke();
smooth();
background(255);
}
void draw()
{
  {
  fill(211,30,30);
 
  beginShape();
  vertex(240,460);
  vertex(20,460);
  vertex(20,240);
  endShape(CLOSE);
  
  beginShape();
  vertex(460,20);
  vertex(460,240);
  vertex(240,20);
  endShape(CLOSE);
 }
 
 {
   fill(162,162,162);
   
   beginShape();
   vertex(20,240);
   vertex(240,240);
   vertex(240,20);
   endShape(CLOSE);
 }

 {
  fill(77,76,76);
  beginShape();
  vertex(240,240);
  vertex(240,460);
  vertex(460,240);
  endShape(CLOSE);
 }
}