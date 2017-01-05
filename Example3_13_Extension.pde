size(590,120);
smooth();

strokeWeight(12);
strokeJoin(ROUND); //round the stroke corners

rectMode(CORNER);
rect(40,25,70,70);

strokeJoin(BEVEL);  //bevel the stroke corners
rectMode(CORNER);
rect(140,25,70,70);

strokeCap(SQUARE);  //square the line edges
line(270,25,340,95);

strokeCap(ROUND);  //round the line endings
line(350,25,420,95);

ellipseMode(CORNER);
ellipse(480,25,70,70);