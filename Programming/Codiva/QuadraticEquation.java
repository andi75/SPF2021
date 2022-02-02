import java.util.Scanner; 

class QuadraticEquation {    
  public static void main(String[] args) {    
    Scanner s;
    s = new Scanner(System.in);
    
    System.out.println("a = ?");    
    double a = s.nextDouble();
    
    System.out.println("b = ?");
        double b = s.nextDouble();
    
    System.out.println("c = ?");
    double c = s.nextDouble();
    
    double D = b*b - 4*a*c;
    if(D > 0)
    {
      double x1 = (-b + Math.sqrt(D)) / (2*a);
      double x2 = (-b - Math.sqrt(D)) / (2*a);      
      System.out.println("x1 = " + x1);
      System.out.println("x2 = " + x2);
    }
    else if(D == 0)
    {
      double x = -b / (2*a);
      System.out.println("x = " + x);
    }
    else
    {
      double za = -b / (2*a);
      double zb = Math.sqrt(-D) / (2*a);
      System.out.println("x1 = " + za + " + " + zb + "i");
      System.out.println("x2 = " + za + " - " + zb + "i");
    }
  }    
}