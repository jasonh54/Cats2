class Cat{
  PImage image;
  float x,y,w,h,vx,vy;
  public Cat(){
    x = random(0,800);
    y = random(0,600);
    w = 20;
    h = 20;
    vx = random(1,5);
    vy = random(1,5);
    image = catImages[(int)(random(0,catImages.length))];
  }
  void show(){
    image(image,x,y,w,h);
  }
  //program the cat character to move and bounce off the walls
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
}
