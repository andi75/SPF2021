class Complex {
  float a, b;
  Complex(float a, float b)
  {
    this.a = a;
    this.b = b;
  }
  Complex() { }
  
  String toString()
  {
      return this.a + " + " + this.b + "i";
  }
}

Complex add(Complex z1, Complex z2)
{
  Complex z = new Complex(z1.a + z2.a, z1.b + z2.b);
  return z;
}

Complex mul(Complex z1, Complex z2)
{
  return new Complex(z1.a * z2.a - z1.b * z2.b, z1.a * z2.b + z1.b * z2.a);
}

Complex div(Complex z1, Complex z2)
{
  float z2Betrag2 = z2.a * z2.a + z2.b * z2.b; 
  return new Complex(
    (z1.a * z2.a + z1.b * z2.b ) / z2Betrag2,
    (- z1.a * z2.b + z1.b * z2.a ) / z2Betrag2 ); 
}
