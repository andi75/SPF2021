void setup() {
  size(600, 600);
  background(255);
  noLoop();
}

void draw()
{
  Complex z1 = new Complex(2, 3);
  Complex z2 = new Complex(-1, 4);
  Complex z3 = add(z1, z2);
  
  ScreenCoordinates sc = new ScreenCoordinates(300, 300, 20, 20);
  line(
    sc.screenX(-9), sc.screenY(0),
    sc.screenX(9), sc.screenY(0)
    );
  line(
    sc.screenX(0), sc.screenY(-9),
    sc.screenX(0), sc.screenY(9)
    );

  fill(255, 0, 0);
  circle( sc.screenX(z1.a), sc.screenY(z1.b), 8 );
  fill(0, 191, 0);
  circle( sc.screenX(z2.a), sc.screenY(z2.b), 8 );
  fill(0, 0, 255);
  circle( sc.screenX(z3.a), sc.screenY(z3.b), 8 );
  
  line(
    sc.screenX(z1.a), sc.screenY(z1.b),
    sc.screenX(z2.a), sc.screenY(z2.b)
    );
  line(
    sc.screenX(z2.a), sc.screenY(z2.b),
    sc.screenX(z3.a), sc.screenY(z3.b)
    );
  line(
    sc.screenX(z3.a), sc.screenY(z3.b),
    sc.screenX(z1.a), sc.screenY(z1.b)
    );
}
