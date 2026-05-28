PImage[] catImages;
PImage catfood;


ArrayList<Food> foods = new ArrayList<>();
ArrayList<Cat> cats = new ArrayList<>();
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
}

void draw(){
  background(200);


  for (int i = 0; i < foods.size();i++){
    foods.get(i).show();
  }
  for(int i = 0; i < 10;i++){
    cats.get(i).show();
    cats.get(i).move();
  }
}

void mouseClicked(){
  foods.add(new Food());
}
