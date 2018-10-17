GameObject cells[][];
float cellSize = 10, fps;
int numberOfColums, numberOfRows, fillPercentage = 15,
    timeSec;

void setup() {
  
  size(512, 512);
  ellipseMode(LEFT);
  background(216, 205, 201);
  frameRate(fps);
  fps = 5;
  timeSec = millis()/1000;
  
  numberOfColums = (int)Math.floor(width/cellSize);
  numberOfRows = (int)Math.floor(height/cellSize);
  
  cells = new GameObject[numberOfColums][numberOfRows];
  
  for(int y = 0; y < numberOfRows; ++y) {
    for(int x = 0; x < numberOfColums; ++x) {
      cells[x][y] = new GameObject(x * cellSize, y * cellSize, cellSize);
      
      if (random(0, 100) < fillPercentage) {
        cells[x][y].alive = true;
      }
    }
  }
}

void draw() {
  for(int y = 0; y < numberOfRows; ++y) {
    for(int x = 0; x < numberOfColums; ++x){
  cells[x][y].draw();
  }
 }
}
