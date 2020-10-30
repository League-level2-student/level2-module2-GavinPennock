Segment head;
int foodX;
int foodY;
void setup(){
  size(500,500);
  
  frameRate(20);
  head=new Segment(250,250);
  dropFood();
}
void dropFood(){
  foodX = ((int)random(50)*10);
  foodY = ((int)random(50)*10);
}

void drawFood(){
  fill(255,0,0);
  rect(foodX,foodY,10,10); 
}

void drawSnake(){
  fill(0,255,0);
  rect(X,Y,10,10);
}

void draw(){
  background(0,0,0);
  drawFood();
  drawSnake();
}

class Segment{
  int X;
 int Y;
Segment(int x, int y){
   X=x;
   Y=y;
  
}
}
