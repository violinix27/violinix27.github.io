/*@pjs preload="file1.png","file2.png","file3.jgp"; */

Player player;
Ground ground;
PVector power = new PVector(0,5);
boolean onGround = false;
void setup() {
  size(1600, 900);
  frameRate(40);
  player = new Player();
  ground = new Ground();
}
void draw() {
  background(159, 232, 255);
  player.update();
  player.display();
  ground.display();
}


class Ground{
  int x = 0;
  int y = 800;
  Ground(){
  }
  void display(){
    noStroke();
    fill(55);
    rect(x,y,1800,100);
  }

}



class Player {
  int x = 0;
  int y = 0;
  PImage img;
  float gravity = 1.5;
  int start = 1;
  int test = 0;
  boolean onGround = false;
  boolean jumping = false;

  Player() {
    img = loadImage("Download.png");
    x = 0;
    y = 0;
  }

  void update() {
    if (isCollision()) {  //wenn der player auf etwas steht ist onGround true
      onGround = true;
      jumping = false;
    } else {  //wenn er auf nichts steht fällt er
      fall();
    }
    if (keyPressed && key == 'd') {  //nach recht gehen
      move(1);
    }
    if (keyPressed && key == 'a') {  //nach links gehen
      move(-1);
    }
    if (onGround == true && keyPressed && key == ' '){
      jump();
    }
    if(jumping == true){
      y-=20;
    }
  }
  
  boolean isCollision() {
    if ((y+170) >= ground.y) {
      start = 1;
      return true;
    } else {
      return false;
    }
  }
  
  void display() {
    image(img, x, y);
  }
  
  void fall() {
    if (start < (ground.y - 170)){
    y += start;
    start += gravity;
    }else{y = 170;}
  }
  
  void move(int direction){
    if(direction == 1){
      x += 10;
    }
    if(direction == -1){
      x -= 10;
    } 
  }
  
  void jump(){
    jumping = true;
  }
}
