int radius=5;
float ballCenterX =30;
float ballCenterY=random(600);
float speed= 5;
int directionX =1;          
int directionY=1;
int ballRadius=10;
int paddleHeight= 150;
int ballBounceCounter= 0;
boolean pause= false;
float pauseSpeed=0;
PFont font;

void setup()  {
  size(800,600);
  smooth();
  ellipseMode(RADIUS);
}

void pauseBall() {               
       if (pause==true){
           pauseSpeed=speed;
         speed=0;}
         else{ speed=pauseSpeed;
         }
      }

void draw()  {
  background(0);
  rectMode(CENTER);
  fill(180, map(ballCenterY, 5, 760-ballRadius, 0, 255), 25);
  rect(760, mouseY, 20,paddleHeight);
  fill(map(ballCenterX, 5, 760-ballRadius, 0, 255), 87,255);
  ellipse(ballCenterX, ballCenterY, ballRadius,ballRadius);
 
  ballCenterX+=speed*directionX;
  ballCenterY+=speed*directionY;
  
  if((ballCenterX<ballRadius)){      //bounce against the left wall
    directionX=-directionX;
  }
      if((ballCenterY>(height-ballRadius))||(ballCenterY<ballRadius)){    //bounce against the bottom & top wall
    directionY=-directionY;
  }
if (ballCenterX==750-ballRadius){                       //if ball hits the left edge of the paddle
  if (ballCenterY>mouseY-paddleHeight/2){              //and is lower than the top of the paddle
    if(ballCenterY<mouseY+paddleHeight/2){              // and higher than the bottom of the paddle
      directionX=-directionX;      //flip the x direction
      speed+=1.25;
      ballBounceCounter+=1;        //add 1 to the score
      }
     }
    }
    fill(227,126,250);                    //display timer and score
    textSize(30);
      textAlign(CENTER);
      text(ballBounceCounter,230,80);
      text("Score:", 160, 80);
      text(millis()/1000, 600,80);              
      text("Timer:",530, 80); 
      textSize(15);
      fill(255,0,0);
      text("By: Nick Kim", 50, 20);

      
      
      if (keyPressed){                      //pause function
        if(key=='p'){
          pause=!pause;
          pauseBall();
        }
      }
      
      if (ballCenterX>920){                  //game over screen
        background(0);
        textSize (90);
        textAlign(CENTER);
        fill(255,0,0);
        text( "GAME OVER", 400, 300);
      }     
}      ///end of void draw