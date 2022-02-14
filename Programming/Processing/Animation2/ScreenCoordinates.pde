class ScreenCoordinates
{
  int ox, oy;
  float xSize, ySize;
  
  ScreenCoordinates(int ox, int oy, float xSize, float ySize)
  {
    this.ox = ox;
    this.oy = oy;
    this.xSize = xSize;
    this.ySize = ySize;
  }
  
  float screenX(float x)
  {
    return ox + x / xSize * width;
  }
  float screenY(float y)
  {
    return oy - y / ySize * height;
  }
}
