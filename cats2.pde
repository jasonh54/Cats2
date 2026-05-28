PImage[] catImages;
PImage catfood;

Cat c = new Cat();
ArrayList<Food> foods = new ArrayList<>();

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
  catfood = loadImage("catfood.png");
}

void draw(){
  c.show();
  c.move();
  for (int i = 0; i < foods.size();i++){
    foods.get(i).show();
  }
}

void mouseClicked(){
  foods.add(new Food());
}
