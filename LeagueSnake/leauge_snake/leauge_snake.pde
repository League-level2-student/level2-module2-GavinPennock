Segment head;
int foodX;
int foodY;
int direction=UP;
void setup(){
  
  int foodeaten=0;
  size(500,500);
  
  frameRate(20);
  head=new Segment(250,250);
  dropFood();
}
void keypressed(){
  if (keyCode==UP){
    direction=UP;
  }
  if (keyCode==DOWN){
    direction=DOWN;
  }
  if (keyCode==RIGHT){
    direction=RIGHT;
  }
  if (keyCode==LEFT){
    direction=LEFT;
  }
}
void dropFood(){
  foodX = ((int)random(50)*10);
  foodY = ((int)random(50)*10);
}

void move(){
  switch(direction) {
   case UP :
     head.y1=head.y1-5;
      break; 
   
   case DOWN :
      head.y1=head.y1+5;
      break; 
   
   case LEFT :
    head.x1=head.x1-5;
   break;
   
    case RIGHT :
     head.x1=head.x1+5;
   break;

}
}
void checkboundries(){
  if(head.x1>498){
    head.x1=2;
  }
}
void drawFood(){
  fill(255,0,0);
  rect(foodX,foodY,10,10); 
}

void drawSnake(){
  fill(0,255,0);
  rect(head.x1,head.y1,10,10);
}

void draw(){
  background(0,0,0);
  drawFood();
  drawSnake();
}

class Segment{
  int x1;
 int y1;
Segment(int x, int y){
   x1=x;
   y1=y;
  
}

}
