void setup()
{
  size(600, 600);
  frameRate(60);
}

float t = 0;

void drawQuad(float t, float saturation)
{
  fill(255, 255 * (1 - saturation), 255 * (1 - saturation) );

  beginShape();
  vertex( (1 - t) * width, 0 );
  vertex( 0, t * height );
  vertex( t * width, height );
  vertex( width, (1 - t) * height );
  endShape(CLOSE);
}

void draw()
{
  background(255);
  stroke(0);
  
  for(int i = 0; i < 10; i++)
  {
    float currentT = t - (9 - i) * 0.025;
    drawQuad( currentT, i / 9.0 );
  }
  t += 0.01 * 60.0 / frameRate ;
  if(t > 1) t -= 1;
}
