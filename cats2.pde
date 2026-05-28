PImage[] catImages;

Cat c = new Cat();
Food f = new Food();

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
}
