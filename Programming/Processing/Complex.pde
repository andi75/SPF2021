class Complex {
  float a, b;
  Complex(float a, float b)
  {
    this.a = a;
    this.b = b;
  }
  Complex() { }
}

Complex add(Complex z1, Complex z2)
{
  Complex z = new Complex(z1.a + z1.b, z2.a + z2.b);
  return z;
}
