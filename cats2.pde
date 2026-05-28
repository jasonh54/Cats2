PImage[] catImages;

Cat c = new Cat();
Food f = new Food();
ArrayList<Food> foods = new ArrayList<>();

void setup(){
  size(800,600);
}

void draw(){
  f.show();
  c.show();
  for (int i = 0; i < foods.size();i++){
    foods.get(i).show();
  }
}

void mouseClicked(){
  foods.add(new Food());
}
