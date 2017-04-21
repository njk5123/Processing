//Nick Kim     April 21, 2017
JitterBug jit;
   JitterBug bug;
   Beetle ladybug;
   void setup() {
     size(480, 120);
     smooth();
     jit = new JitterBug(width * 0.33, height/2, 50);
     bug = new JitterBug(width * 0.66, height/2, 10);
     ladybug = new Beetle(30,random(0,40),40,50,random(45,50),random(30,50));
}
   void draw() {
     jit.move();
     jit.display();
     jit.setColor();
     jit.setSize();
     bug.move();
     bug.display();
     bug.setColor();
     bug.setSize();
     ladybug.displayBeetle();
     ladybug.moveBeetle();
   }
 