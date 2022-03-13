void setup() {
  size(1200, 600);
  background(255);
  // noLoop();
}

void grid(ScreenCoordinates sc, int min, int max)
{
  float pos = min;
  while(pos <= max)
  {
    if(pos == 0) { stroke(0); }
    else { stroke(191); }
    line(
      sc.screenX(pos), sc.screenY(min - 0.2),
      sc.screenX(pos), sc.screenY(max + 0.2)
      );
    line(
      sc.screenX(min - 0.2), sc.screenY(pos),
      sc.screenX(max + 0.2), sc.screenY(pos)
      );
    pos += 1;
  }
}  
void draw()
{
  background(255);
  
  ScreenCoordinates sc1 = new ScreenCoordinates(width/4, height/2, 18, 9);
  ScreenCoordinates sc2 = new ScreenCoordinates(3*width/4, height/2, 18, 9);
  grid(sc1, -4, 4);
  grid(sc2, -4, 4);

  float mx = (mouseX - sc1.ox) * 18.0 / width; //
  //float mx = -0.1;
  float my = -(mouseY - sc1.oy) * 9.0 / height; // 
  //float my = 0.2;
  float r = sqrt( (1 - mx)*(1 - mx) + (0 - my)*(0 - my) );
  
  for(int i = 0; i < 100; i++)
  {
    float angle = i * 2 * PI / 100.0;
    float x = mx + r * cos(angle);
    float y = my + r * sin(angle);
    
    stroke(0, 0, 255);
    circle(sc1.screenX(x), sc1.screenY(y), 2);

    Complex z = new Complex(x, y);
    Complex w = add(z, div( new Complex(1, 0), z ));

    stroke(255, 0, 0);
    circle(sc2.screenX(w.a), sc1.screenY(w.b), 2);
  }
}
