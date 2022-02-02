class GCD {
  public static void main(String[] args) {
    int a = 84;
    int b = 36;
    System.out.println("The greatest common divisor of " + a + " and " + b + " is " + gcd(84, 36));
  }
  
  public static int gcd(int a, int b)
  {
    // Check if a is larger or equal to b, otherwise, swap a and b
    if(a < b)
    {
        int tmp = a;
        a = b;
        b = tmp;
    }
    // Compute the gcd using Euler's algorithm
    while(b != 0)
    {
      int rest = a % b;
      // b ist das neue a
      a = b;
      // rest ist das neue b
      b = rest;
    }
    // a ist der ggT
    return a;
  }
}