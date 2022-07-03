Trail_Storage trails_storage;
Ball[] balls;

int frame = 0;
int trail_length = 50;


void setup(){
  balls = new Ball[100];
  trails_storage = new Trail_Storage(trail_length);  
  
  for(int i = 0; i < balls.length; i++){
    balls[i] = new Ball(random(0,width),random(0,height),random(3,10),random(0,TWO_PI),random(10,30));  
  }
  
  fullScreen();
  colorMode(HSB);
  
}

void draw(){
  println(frameRate);
  
  frame++;
  background(0);
  trails_storage.showAll();

  int num = 0;
  for (Ball b : balls){
    trails_storage.addTrail(new Trail(b.pos.x,b.pos.y, color(map(num,0,balls.length,0,255),255,255),trail_length, b.diameter));
    b.move();
    b.bounce();
    b.show();
    num++;
  }
  trails_storage.moveDown();
}
