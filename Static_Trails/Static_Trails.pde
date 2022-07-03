Trail trail;
void setup(){
  fullScreen();
  trail = new Trail(200);
}

void draw(){
  background(0);
  trail.addParticle(mouseX,mouseY);
  trail.show();
}
