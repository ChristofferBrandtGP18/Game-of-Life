public class GameObject
{
  int x, y, size, neighbours;

  boolean alive = false,
  aliveNextCells = false;

  public GameObject (int x, int y, int size)
  {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  void calculateNextCells(int x, int y)
  {
    neighbours = countNeighbours(x, y);
    setNextGenerationState();
  }


  int countNeighbours(int x, int y)
  {
    neighbours = 0;

    for (int deltaY = -1; deltaY < 2; deltaY++)
    {
      for (int deltaX = -1; deltaX < 2; deltaX++)
      {
        if ((deltaX == 0) && (deltaY == 0)) 
        {
          continue;
        }

        try
        {
          if (cells[x + deltaX][y + deltaY].alive)
          {
            neighbours++;
          }
        }
        catch (ArrayIndexOutOfBoundsException e)
        {
          
        }
      }  
    }

    return neighbours;
  }



  void setNextGenerationState()
  {
    if (!alive)
    {
      if (neighbours == 3)
      {
        aliveNextCells = true;
      }
      else
      {
        aliveNextCells = false;
      }
    }

    else if ((neighbours < 2) || (neighbours > 3))
    {
      aliveNextCells = false;
    }

    else
    {
      aliveNextCells = true;

    }
  }


  void draw()
  {
    if (alive)
    {
      ellipse(x, y, size, size);
    }
  }


  void updateCellState()
  {
    alive = aliveNextCells;
  }


}
