int sumtotal=0;
int value = 1;
void setup(){
size(1000,1000);
noLoop();
}
void draw(){
  background(128,128,128);
  int total = 0;
  
for (int y = 165; y < 800*(value/3+1); y += 100-value) {
    for (int x = 150-value*3; x < 800*(value/3+1); x += 100-value) {
      Die bob = new Die(x, y);
      bob.roll();
       bob.show();
      total += bob.dots;
    }
  }
  sumtotal += total;
  fill(0);
  text("Total dots: "+total,450,100);
  text("Absolute total since last refresh: "+sumtotal,425,125);
  text("PRESS ANY KEY TO SWITCH TO 272 DICE",400,150);
}
void mousePressed(){
redraw();
}

void keyPressed() {
  if (value == 1) {
    value = 50;
  } else {
    value = 1;
  }
  redraw();
}


class Die {
  int myX, myY, dots;
  
  Die(int x, int y){
    myX = x;
    myY = y;
  }
  void roll(){
    dots = (int)(Math.random()*6 + 1);
  }
  void show(){
    fill(255);
    rect(myX,myY,100-value,100-value,15);
    fill(0);
    //text(dots,myX+25,myY+25);
    if(dots == 1){
    ellipse(myX+50,myY+50,20,20);
    }
    if(dots == 2){
    ellipse(myX+25,myY+25,20,20);
    ellipse(myX+75,myY+75,20,20);
    } 
    if(dots == 3){
    ellipse(myX+20,myY+25,20,20);
    ellipse(myX+50,myY+50,20,20);
    ellipse(myX+75,myY+75,20,20);
    }
    if(dots == 4){
    ellipse(myX+25,myY+25,20,20);
    ellipse(myX+75,myY+25,20,20);
    ellipse(myX+25,myY+75,20,20);
    ellipse(myX+75,myY+75,20,20);  
  }
    if(dots == 5){
    ellipse(myX+50,myY+50,20,20);
    ellipse(myX+25,myY+25,20,20);
    ellipse(myX+75,myY+25,20,20);
    ellipse(myX+25,myY+75,20,20);
    ellipse(myX+75,myY+75,20,20);  
    }
    if(dots == 6){
    ellipse(myX+25,myY+25,20,20);
    ellipse(myX+75,myY+25,20,20);
    ellipse(myX+25,myY+50,20,20);
    ellipse(myX+75,myY+50,20,20);
    ellipse(myX+25,myY+75,20,20);
    ellipse(myX+75,myY+75,20,20); 
    } 
}
}
