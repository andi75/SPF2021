void setup() {
  size(600, 600);
  background(255);
  noLoop();
}

void draw()
{
  ScreenCoordinates sc = new ScreenCoordinates(200, 300, 17, 17);
  line(
    sc.screenX(-5), sc.screenY(0),
    sc.screenX(10), sc.screenY(0)
    );
  line(
    sc.screenX(0), sc.screenY(-7.5),
    sc.screenX(0), sc.screenY(7.5)
    );
    
  for(int i = 0; i < 16; i++)
  {
    float x = i - 5;
    line(
      sc.screenX(x), sc.screenY(-0.2),
      sc.screenX(x), sc.screenY(0.2)
      );
  }
  for(int i = 0; i < 15; i++)
  {
    float y = i - 7;
    line(
      sc.screenX(-0.2), sc.screenY(y),
      sc.screenX(0.2), sc.screenY(y)
      );
  }
}
