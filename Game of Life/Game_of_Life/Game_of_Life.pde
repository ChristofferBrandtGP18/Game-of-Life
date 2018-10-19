GameObject cells[][];
int cellSize = 10, fillPercentage = 10, 
numberOfColumns, numberOfRows;


void setup()
{
  size(377, 377);
  strokeWeight(0);
  ellipseMode(LEFT);
  frameRate(2);

  numberOfColumns = (int)Math.floor(width / cellSize);
  numberOfRows = (int)Math.floor(height / cellSize);
  cells = new GameObject[numberOfColumns][numberOfRows];


  for (int y = 0; y < numberOfRows; ++y)
  {
    for (int x = 0; x < numberOfColumns; ++x)
    {
      cells[x][y] = new GameObject(x * cellSize, y * cellSize, cellSize);
      if (random(0, 100) < fillPercentage)
      {
        cells[x][y].alive = true;
      }
    }  
  }
}

void draw()
{
  newDraw();
  newCellData();
  drawCells();
  loadNextCells();
}


void newDraw()
{
  fill(216, 201, 205);
  rect(0, 0, width, height);
  fill(255 ,205, 14);
}


void newCellData()
{
  for (int y = 0; y < numberOfRows; ++y)
  {
    for (int x = 0; x < numberOfColumns; ++x)
    {
      cells[x][y].calculateNextCells(x, y);
    }
  }
}


void drawCells()
{
  for (int y = 0; y < numberOfRows; ++y)
  {
    for (int x = 0; x < numberOfColumns; ++x)
    {
      cells[x][y].draw();
    }
  }
}


void loadNextCells()
{
  for (int y = 0; y < numberOfRows; ++y)
  {
    for (int x = 0; x < numberOfColumns; ++x)
    {
      cells[x][y].updateCellState();
    }
  }
}
