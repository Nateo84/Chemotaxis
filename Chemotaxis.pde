Bacteria[] erak;
int i, q;
boolean food;
void setup()   
{     
  size (750, 750);
  frameRate(20);
  erak=new Bacteria[20];
  for (int i=0; i<erak.length; i++)
  {
    erak[i]= new Bacteria();
  }
}   
void draw()   
{    
  background(0);
  for (i=0; i<erak.length; i++)
  {
    erak[i].walk();
    erak[i].show();
  }

}  
void mousePressed()
{
  food=true;
}
int x, y;
class Bacteria    
{    
 int myX;
 int myY;
  Bacteria()
  {
  myX=(int)(Math.random()*500);
  myY=(int)(Math.random()*500);
  }

void show()
{
  fill (130,250,250);
  ellipse(myX, myY, 30, 30);
}
void walk()
{  
  {
    if(food==true){
       myX+=(int)((Math.random()*50)-25);
       myY+=(int)((Math.random()*50)-25);
       
        }else if(food==false){
          myX+=(int)((Math.random()*7)-3);
          myY+=(int)((Math.random()*7)-3);
       }
  }
}
}
