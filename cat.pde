class Cat{
  PImage image;
  float x,y,w,h,vx,vy;
  Food target;
  Toy target2;
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
    if (target != null){
      vx = (target.x - this.x)/20;
      vy = (target.y - this.y)/20;
      this.x += vx;
      this.y += vy;
    }
    else if(target2 != null){
      vx = (target2.x - this.x)/20;
      vy = (target2.y - this.y)/20;
      this.x += vx;
      this.y += vy;
    }
    else{
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
  void stopChase(){
    //if target2 is not in the toys list
    //set target2 to null
    if(target2!=null && !toys.contains(target2)){
      target2 = null;
      vx = random(-5,5);
      vy = random(-5,5);
    }
    if(target != null && !foods.contains(target)){
      target = null;
      vx = random(-5,5);
      vy = random(-5,5);
    }
  }
  void detectFood(){
    //use a for loop to go through every food
    //all food objects have a xy location
    //cats also have a xy location
    //use the pythagorean therom to calculate distance between their xy coordinates
    //check if the disance is below 100
    for (int i = 0; i < foods.size();i++){
      float a = sq(this.x - foods.get(i).x);
      float b = sq(this.y - foods.get(i).y);
      if (sqrt(a - b) < 50){
        target = foods.get(i);
      }
    }
  }
  void detectToy(){
    for (int i = 0; i < toys.size();i++){
      float a = sq(this.x - toys.get(i).x);
      float b = sq(this.y - toys.get(i).y);
      if (sqrt(a - b) < 50){
        target2 = toys.get(i);
      }
    }
  }
}
