class Trail{
  PVector pos;
  color col;
  int time;
  float wid;
  public Trail(float x, float y, color c, int t, float maxWidth){
    pos = new PVector(x,y);
    col = c;
    time = t;
    wid = maxWidth;
  }
  
  void show(){
    fill(col);
    noStroke();
    ellipse(pos.x,pos.y,min(time/2,wid),min(time/2,wid));
    time--;
  }
  
  
  
}
