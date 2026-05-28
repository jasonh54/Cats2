PImage[] catImages;

Cat c = new Cat();
Food f = new Food();
ArrayList<Food> foods = new ArrayList<>();

void setup(){
  size(800,600);
  String folderPath = sketchPath("cats");
  print(folderPath);
  File dir = new File(folderPath);
  File[] files = dir.listFiles();
  catImages = new PImage[files.length];
  for (int i = 0; i < files.length; i++) {
    catImages[i] = loadImage(folderPath+"\cats\\" + files[i].getName());
  }
}

void draw(){
  f.show();
  c.show();
  c.move();
  for (int i = 0; i < foods.size();i++){
    foods.get(i).show();
  }
}

void mouseClicked(){
  foods.add(new Food());
}
