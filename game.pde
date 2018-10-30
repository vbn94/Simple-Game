int xpos = 0;
int ypos = 0;
int ypos1 = 0;
int new = 10;

void setup(){
  size(600, 600);
}

void draw(){
  background(255, 0, 0);
  
  int a = doubleNum(10);
  int b = doubleNum(132);
  int c = maxNum(100, 30);
  float deg = deg2rad(180);
  println("a = " + a);
  println("b = " + b);
  println("c = " + c);
  println("degree = " + deg);
  
  if (keyPressed && keyCode == LEFT){
    xpos--;
  } else if (keyPressed && keyCode == RIGHT){
    xpos++;
  } else if (keyPressed && keyCode == UP){
    ypos--;
  } else if (keyPressed && keyCode == DOWN){
    ypos++;
  }
  
  if (keyPressed && key == 'a'){
    xpos1--;
  } else if (keyPressed && key == 'd'){
    xpos1++;
  } else if (keyPressed && key == 'w'){
    ypos1--;
  } else if (keyPressed && key == 's'){
    ypos1++;
  }
  drawHuman(xpos, ypos);
  drawHuman(xpos1, ypos1);
  drawHuman(400, 300);
  drawHuman(100, 400);
}
void drawHuman(int x, int y){
  rectMode(CENTER);
  rect(100 + x,100 + y,20,100);
  ellipse(100 + x,70 + y,60,60);
  ellipse(81 + x,70 + y,16,32); 
  ellipse(119 + x,70 + y,16,32); 
  line(90 + x,150 + y,80 + x,160 + y);
  line(110 + x,150 + y,120 + x,160 + y);
}

int doubleNum(int num){
  return (2*num);
}

int maxNum(int num1, int num2){
  if (num1 > num2){
    return num1;
  } else {
    return num2;
  }
}

float deg2rad(float degree){
  float rad = (degree * 2 * PI) / 360;
  return rad;
}
