class Food{
  PImage image;
  float x,y,w,h;
  public Food(){
    //spawn food where the mouse is
    x = mouseX;
    y = mouseY;
    w = 20;
    h = 20;
  }
  void show(){
    circle(x,y,w);
  }
}
