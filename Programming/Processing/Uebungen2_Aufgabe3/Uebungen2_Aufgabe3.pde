int n = 50;

void setup()
{
  size(600, 600);
  frameRate(n / 5.0);
}

int current = 0;

void draw()
{
  background(255);

  float r = (width - 200) / 2;
  float rr = 2 * PI * r / (2 * n);

  for(int i = 0; i < n; i++)
  {
    if(i == current) { fill(255, 0, 0); }
    else { fill(255, 255, 255); }
    
    float phi = i * 2 * PI / 50.0;
    circle(
      width / 2 + r * cos(phi),
      height / 2 - r * sin(phi),
      2 * rr);
  }
  current = (current + 1) % 50;
}
