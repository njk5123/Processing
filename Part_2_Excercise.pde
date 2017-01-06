//Nick Kim
void setup()
{
  size(480, 200);
  smooth();
  background(255);
}

void draw()
{
  strokeWeight(10);                  //antennae
  line(120,60, 100, 30);
  line(160,60, 180, 30);
  
  noStroke();                        //body
  fill(6,191,28);
  ellipse(390,140,80,80);
  fill(191,6,9);
  ellipse(340,135,80,80);
  fill(227,164,2);
  ellipse(290, 140,80,80);
  fill(2,7,227);
  ellipse(240,120,80,80);
  fill(227,2,216);
  
    stroke(1);                      //right arm
  strokeWeight(8);
  strokeJoin(ROUND);
  line(190,100, 160, 160);
  
  noStroke();
  ellipse(190,100,80,80);            //pink section
  fill(6,191,28);
  ellipse(140,80,80,80);
  
  stroke(1);
  strokeWeight(8);
  strokeJoin(ROUND);                //left arm
  line(210, 120, 190, 180);
  
  strokeCap(SQUARE);                  //face
  fill(0);
  ellipse(160, 70, 5,5);
  ellipse(120, 70,5,5);
  rect(130,90,20,5);
}
  
  