void setup() {
  size(600, 600);
  noLoop();
}

void draw()
{
  Complex z1 = new Complex(2, 3);
  println("z1 = " + z1.a + " + " + z1.b + "i");
  Complex z2 = new Complex();
  z2.a = -1;
  z2.b = 4;
  println("z2 = " + z2); // uses the toString() method in Complex
  Complex z3 = mul(z1, z2);
  println("z3 = " + z3);
}
