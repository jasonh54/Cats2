class Food{
  PImage image;
  float x,y,w,h;
  public Food(){
    //spawn food where the mouse is
    x = mouseX;
    y = mouseY;
    w = 40;
    h = 20;
    image = catfood;
  }
  void show(){
    image(this.image,x,y,w,h);
  }
}
