
public class GameObject {
  float x, y, size;
  boolean alive = false;
  
  GameObject (float x, float y, float size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  void draw() 
  {
    if (alive) {
    //fill(random(0,255), random(0,255), random (0,255));
    fill(random(235,252), random(180,240), random(15,30));
    ellipse(x, y, size, size);
   }
 }
}
