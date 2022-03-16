size(512, 256);
background(255);

float pos = 0;
float r = 2;

for(int i = 0; i <= 6; i++)
{
  pos += r;
  // no need to exactly reproduce the colors
  fill(63 + 1.5 * r, 0, 0);
  circle(pos, height / 2, 2*r);
  pos += r;
  r *= 2;
}
