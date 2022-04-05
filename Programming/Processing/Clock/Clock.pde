void setup()
{
  size(600, 600);
  frameRate(5);
}

void hand(float angle, float length, float thickness)
{
  float x = length * cos(angle * 2 * PI / 360.0);
  float y = length * sin(angle * 2 * PI / 360.0);
  strokeWeight(thickness);
  line(width / 2, height / 2, width / 2 + x, height / 2 - y);
}

void dash(float angle, float r1, float r2, float thickness)
{
  float x = cos(angle * 2 * PI / 360.0);
  float y = sin(angle * 2 * PI / 360.0);
  strokeWeight(thickness);
  line(width / 2 + x * r1, height / 2 - y * r1, width / 2 + x * r2, height / 2 - y * r2);
}
  
void clockFace()
{
  circle(width / 2, height / 2, width * 0.98);
  
  // Striche am Rand des Ziffernblatts
  for(int i = 0; i < 60; i++)
  {
    float angle = 90 - 360.0 * i / 60.0;
    if(i % 5 == 0)
    {
      dash(angle, width * 0.44, width * 0.48, 5);
    }
    else
    {
      dash(angle, width * 0.46, width * 0.48, 2);
    }
  }
}

void draw()
{
  background(255);
  float phi_s = 90.0 - 360.0 * second() / 60.0;
  float phi_m = 90.0 - 360.0 * minute() / 60.0;
  float phi_h = 90.0 - 360.0 * ( hour() / 12.0 + minute() / 720.0 );
  
  clockFace();
    
  stroke(255, 0, 0);
  hand(phi_s, width * 0.4, 1.0);
  stroke(0);
  hand(phi_m, width * 0.36, 3.6);
  hand(phi_h, width * 0.24, 5.0);
} 
