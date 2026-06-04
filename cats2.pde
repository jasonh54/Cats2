PImage[] catImages;
PImage catfood;
PImage yarn;

ArrayList<Food> foods = new ArrayList<>();
ArrayList<Cat> cats = new ArrayList<>();
ArrayList<Toy> toys = new ArrayList<>();
boolean type = false;
void setup(){
  size(800,600);
  String folderPath = sketchPath("cats");
  print(folderPath);
  File dir = new File(folderPath);
  File[] files = dir.listFiles();
  catImages = new PImage[files.length];
  for (int i = 0; i < files.length; i++) {
    catImages[i] = loadImage(folderPath+"\\" + files[i].getName());
  }
  for(int i = 0; i < 10;i++){
    cats.add(new Cat());
  }
  catfood = loadImage("catfood.png");
  yarn = loadImage("yarn.png");
}

void draw(){
  background(200);


  for (int i = 0; i < foods.size();i++){
    foods.get(i).show();
  }
  for (int i = 0; i < toys.size();i++){
    toys.get(i).show();
    toys.get(i).move();
  }
  for(int i = 0; i < 10;i++){
    cats.get(i).show();
    cats.get(i).move();
  }
}

void keyPressed(){
  if(key == ' '){
    type = !type;
  }
}

void mouseClicked(){
  if(type){
    foods.add(new Food());
  }
  if(!type){
    toys.add(new Toy());
  }
}
