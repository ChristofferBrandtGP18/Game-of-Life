boolean collisionDetection()
{
  float maxDistance = cellSize + cellSize;

  if(abs(cellSize + cellSize) > maxDistance
  || abs(cellSize - cellSize) > maxDistance)
  {
    return false;
  }
  else
  {
   return true;
  }
}
