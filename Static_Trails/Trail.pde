class Trail{
  ArrayList<PVector> particles;
  int maxSize;
  public Trail(int size){
    maxSize = size;
    particles = new ArrayList<PVector>();
  }
  
  void show(){
    colorMode(HSB);
    for (int i = 0; i < particles.size() - 1; i++){
      strokeWeight(min(i/2,10));
      stroke(map(i,0,maxSize,0,255),255,255);
      line(particles.get(i).x,particles.get(i).y,particles.get(i+1).x,particles.get(i+1).y);
    }

  }
  
  void addParticle(float x, float y){
    particles.add(new PVector(x,y));
    if (particles.size() == maxSize){
      particles.remove(0);
    } 
  }
}
