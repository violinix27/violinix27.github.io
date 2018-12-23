Mover mover;
void setup() {
  size(1600,900);
  mover = new Mover();
}
void draw() {
  background(55);
  mover.display();
}
class Mover{
  int x = 20;
  int y = 20;
  void display(){
    fill(255);
    rect(100,100, x, y);
    x++;
  }
}
