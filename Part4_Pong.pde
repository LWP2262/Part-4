  // Laurel Parsley 11/8/16
int p1 = 120;
int p2 = 120;
void setup (){
  size(720,600);
}


void draw () {
  if (keyPressed) {
    if (keyCode ==UP) {
      p1 -= 10;
    }else if (keyCode == DOWN) {
      p1 += 10;
    }
    background(0);
     rect(10,p1,30,120); //player 1
  }
    
 
  
}