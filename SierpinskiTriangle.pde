
public void setup()
{
  size(500,500);
  background(0);

}
public void draw()
{ background(200,200,0);
noStroke();
int m=40;
int c=140; 

textSize(32);
fill(0);
text("Triangle Magic",c,m);
textSize(20);
text("How many triangles can you find?",80,450);
  sierpinski(70,400,350);

}



public void sierpinski(int x, int y, int len) 
{
  if(len > 40)
  { 
    sierpinski(x,y,(len/2));
    sierpinski(x+(len/2),y,(len/2));
    sierpinski(x+(len/4),y-(len/2),(len/2));
  }
  else 
  

  { fill(100,10,y);
    triangle(x,y,x+(len/2),y-len,x+len,y);
  }
}
