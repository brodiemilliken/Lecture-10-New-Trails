class Ball{
  PVector pos, vel, acc;
  float radius, diameter;
  public Ball(float x, float y, float speed, float dir, float w){
    pos = new PVector(x,y);
    vel = new PVector(speed * cos(dir), speed * sin(dir));
    acc = new PVector(0,0);
    diameter = w;
    radius = w/2;
  }
  
  void show(){
    noStroke();
    fill(255);
    ellipse(pos.x,pos.y, diameter, diameter);
  }
  
  void move(){
    vel.add(acc);
    pos.add(vel);
    acc.set(0,0);
  }
  
  void bounce(){
    if (pos.x < radius || pos.x > width - radius) vel.x *= -1;
    if (pos.y < radius || pos.y > height - radius) vel.y *= -1; 
  }

}
