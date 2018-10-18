GameObject cells[][];
int cellSize = 10, fillPercentage = 10, 
numberOfColumns, numberOfRows;


void setup()
{
  size(600, 600);
  GameBase();
}


void draw()
{
  newDraw();
  newCellData();
  drawCells();
  loadNextGeneration();
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
      cells[x][y].calculateNextGeneration(x, y);
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


void loadNextGeneration()
{
  for (int y = 0; y < numberOfRows; ++y)
  {
    for (int x = 0; x < numberOfColumns; ++x)
    {
      cells[x][y].updateCellState();
    }
  }
}
