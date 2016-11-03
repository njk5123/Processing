void setup()
{
  size(480, 120);
  smooth();
}

void draw()
{
  if (mousePressed) 
  {
    fill(3);
  } 
  else 
  {
    fill(225) ;
  }
  
  ellipse(mouseX, mouseY, 80, 80);
}