void setup()
{
  size(600, 600);
  frameRate(60);
}

float t = 0;

void draw()
{
  float x = 250*cos(t);
  float y = 250*sin(t);
  circle(300 + x, 300 - y, 10);
  
  t += 0.01;
}
