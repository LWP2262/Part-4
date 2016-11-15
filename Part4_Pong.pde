// Laurel Parsley 11/8/16 //<>//
int p1 = 120; 
int p2 =  120;
int ballx = 360;
int bally = 300;
int directionx = 1;
float directiony = 1;
int speedx = 0;
int speedy = 5;
int score1 = 0;
int score2 = 0;
int mstart;
int sstart;
int minute;
int second;
int red = #FF0000;
int orange = #FF8E03;
int yellow = #FEFF03;
int green = #00D810;
int blue = #0319FF;
int purple = #BB03FF;
int ballColor = red;
PFont font;
void setup () {
  size(720, 600);
  background(0);
  noStroke();
  smooth();
  rect(685, p2, 30, 120);  //player 1
  rect(5, p1, 30, 120);     //player 2
  fill(ballColor);
  ellipse(ballx, bally, 30, 30);  //ball
  fill (250);
  font = loadFont("AgencyFB-Bold-48.vlw");
  textFont(font);
  mstart = minute();
  sstart = second();
}


void draw () {
  if (speedx != 0) {
    p2 = mouseY-60;
    minute = minute() - mstart; 
    second = second() - sstart;
    if (keyPressed) {
      if (key == 'w' && p1 > -60) {
        p1 -= 10;
      } else if (key == 's' && p1 < 540) {
        p1 += 10;
      }
    }
    if (ballx == 670 && bally > p2 && bally < (p2 +120)) {
      directionx = -1;
    } 
    if (ballx == 50 && bally > p1 && bally < (p1 +120)) {
      directionx = 1;
    } 
    if (ballx == 715) {
      speedx = 0;
      score1 += 1;
    } 
    if (ballx == 5) {
      speedx = 0;
      score2 += 1;
    }
    if (bally == 585) {
      directiony = -1;
    } 
    if (bally == 15) {
      directiony = 1;
    }
    background(0);
    noStroke();
    fill(250);
    smooth();
    rect(5, p1, 30, 120);   
    rect(685, p2, 30, 120);
    ballx += (speedx * directionx);
    bally += (speedy *directiony);
    fill(ballColor);
    ellipse(ballx, bally, 30, 30); //ball
    fill(250);
    textSize(56);
    text(score1, 120, 80);
    text(score2, 600, 80);
    text(minute, 355, 80);
    text(":", 380, 80);
    text(second, 395, 80);
  } else {
    fill(250);
    textSize(48);
    text("Click to Play!", 280, 320); 
    if (mousePressed) {
      speedx = 5;
      speedy = 5;
      directionx = 1;
      p1 = 120;
      p2 = 120;
      ballx = 360;
      bally = 300;
     mstart = minute();
      sstart = second();
     if (ballColor == red) {
       ballColor = orange;
     } else if (ballColor == orange) {
       ballColor = yellow;
     } else if (ballColor == yellow) {
       ballColor = green;
     } else if (ballColor == green) {
       ballColor = blue;
     } else if (ballColor == blue) {
        ballColor = purple;
      } else if (ballColor == purple) {
       ballColor = red;
      }
    }
  }
}