int num = 0;
public void setup()
{
  background(0);
  size(800,800);
}
public void draw()
{
  background(0);
  sierpinski(0,800,num);
}
public void mousePressed()
{
  num += 10;
}
void keyPressed()
{
  if(key == ' '){
    num -= 10;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
