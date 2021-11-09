Bacteria[] erak;
int i, q;
boolean food;
void setup()   
{     
  size (750, 750);
  frameRate(20);
  erak=new Bacteria[20];
  //tim=new Bacteria[5];
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
int x, y, g, t;
class Bacteria    
{    
 int myX;
 int myY;
 int g=675;
 int t=675;
  Bacteria()
  {
  myX=(int)(Math.random()*500);
  myY=(int)(Math.random()*500);
  }

void show()
{
  fill (240, 12, 12);
  rect (g,t,50,50);
  fill (130,250,250);
  ellipse(myX, myY, 30, 30);
}
void walk()
{  
  {
    if(food==true){
       myX+=(int)((Math.random()*10)-4);
       myY+=(int)((Math.random()*10)-4);
       
        }else if(food==false){
          myX+=(int)((Math.random()*8)-4);
          myY+=(int)((Math.random()*8)-4);
       }
  }
}
}
