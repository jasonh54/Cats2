class Toy{
  PImage image;
  float x,y,w,h,vx,vy;
  int time;
  public Toy(){
    image = yarn;
    x = mouseX;
    y = mouseY;
    w = 30;
    h = 30;
    vx = random(-5,5);
    vy = random(-5,5);
    time = 500;
  }
  void show(){
    image(this.image,x,y,w,h);
  }
  void move(){
    this.x += vx;
    this.y += vy;
    if(x > 800 || x < 0){
      vx = -vx;
    }
    if(y > 600 || y < 0){
      vy = -vy;
    }
  }
  void countdown(){
    time--;
    if(time <= 0){
      toys.remove(this);
    }
  }
}
