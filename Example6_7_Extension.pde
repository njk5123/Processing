//Nick Kim January 11, 2017
PFont font;
void setup() {
  size(480, 120);
  font = loadFont("MyanmarMN-Bold-14.vlw");
  textFont(font);
}
void draw() {
  background(255);
  fill(255,25,0);
  text("Nick Kim", 26, 30, 240, 100);
  
  font = loadFont("BodoniSvtyTwoITCTT-BookIta-30.vlw");
  textFont(font);
  fill(0,235,190);
  text("Nick Kim",24,26);
}