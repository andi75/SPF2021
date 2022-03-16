size(600, 600);
background(255);

for(int i = 0; i <= 20; i++)
{
  float pos = i * width / 20.0;
  line(pos, 0, width - pos, height);
  line(0, pos, width, height - pos);
}
