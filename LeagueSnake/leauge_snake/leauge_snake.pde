Segment head;
int foodX;
int foodY;
int direction=UP;
int score=0;
ArrayList<Segment> snakeBody=new ArrayList<Segment>();
boolean foodEaten=false;
int foodeaten=0;
void setup(){
 
  
  size(500,500);
  
  frameRate(10);
  head=new Segment(250,250);
  dropFood();
}
 void drawTail(){
   for(Segment seg:snakeBody){
     rect(seg.x1,seg.y1,10,10);
   }
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
  checkboundries();
  move();
}
void eat(){
 if(head.x1 == foodX && head.y1 == foodY) {
   manageTail();
   foodeaten++;
   dropFood();
   Segment tail = new Segment(head.x1, head.y1);
   snakeBody.add(tail);
   
 }
}
void dropFood(){
  foodX = ((int)random(50)*10);
  foodY = ((int)random(50)*10);
}

void move(){
  switch(direction) {
   case UP :
     head.y1=head.y1-10;
      break; 
   
   case DOWN :
      head.y1=head.y1+10;
      break; 
   
   case LEFT :
    head.x1=head.x1-10;
   break;
   
    case RIGHT :
     head.x1=head.x1+10;
   break;
 }
}
void checkTailCollision(){
 
}
void manageTail(){
checkTailCollision();
drawTail();
snakeBody.add(new Segment(head.x1,head.y1));
}
void checkboundries(){
  if(head.x1>498){
    head.x1=2;
  }
  if(head.y1>498){
    head.y1=2;
  }
  if(head.x1<2){
    head.x1=498;
  }
  if(head.y1<2){
    head.y1=498;
  }
}
void drawFood(){
  fill(255,0,0);
  rect(foodX,foodY,10,10); 
}

void drawSnake(){
  fill(0,255,0);
  rect(head.x1,head.y1,10,10);
  //manageTail();
}

void draw(){
  background(0,0,0);
  drawFood();
  drawSnake();
  keypressed();
  eat();
 if(foodEaten==true){
   foodEaten=false;
   drawTail();
 }
}

class Segment{
  int x1;
 int y1;
Segment(int x, int y){
   x1=x;
   y1=y;
  
}

}
