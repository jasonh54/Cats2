class Food{
  PImage image;
  float x,y,w,h;
  int count;
  public Food(){
    //spawn food where the mouse is
    x = mouseX;
    y = mouseY;
    w = 40;
    h = 20;
    image = catfood;
    count = 500;
  }
  void show(){
    image(this.image,x,y,w,h);
  }
  void countdown(){
    if (count <= 0){
      foods.remove(this);
    }
  }
}
