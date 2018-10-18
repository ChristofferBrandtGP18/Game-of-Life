public class GameObject
{
  int x, y, size, neighbourCount;

  boolean alive = false,
  aliveNextGeneration = false;

  public GameObject (int x, int y, int size)
  {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  void calculateNextGeneration(int x, int y)
  {
    neighbourCount = countNeighbours(x, y);
    setNextGenerationState();
  }


  int countNeighbours(int x, int y)
  {
    neighbourCount = 0;

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
            neighbourCount++;
          }
        }
        catch (ArrayIndexOutOfBoundsException e)
        {
          
        }
      }  
    }

    return neighbourCount;
  }



  void setNextGenerationState()
  {
    if (!alive)
    {
      if (neighbourCount == 3)
      {
        aliveNextGeneration = true;
      }
      else
      {
        aliveNextGeneration = false;
      }
    }

    else if ((neighbourCount < 2) || (neighbourCount > 3))
    {
      aliveNextGeneration = false;
    }

    else
    {
      aliveNextGeneration = true;

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
    alive = aliveNextGeneration;
  }


}
