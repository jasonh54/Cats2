class Food{
  PImage image;
  float x,y,w,h;
  public Food(){
    x = random(0,800);
    y = random(0,800);
    w = 20;
    h = 20;
  }
  void show(){
    circle(x,y,w);
  }
}
