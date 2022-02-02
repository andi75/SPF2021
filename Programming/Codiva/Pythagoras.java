import java.util.Scanner;

class Pythagoras {
  public static void main(String[] args) {
    System.out.println("To compute the hypotenuse c in a right triangle, please enter cathetes a and b");

    Scanner scanner = new Scanner(System.in);

    System.out.println("a = ?");
    double a = scanner.nextDouble();
    System.out.println("b = ?");
    double b = scanner.nextDouble();
    
    double c = Math.sqrt(a*a + b*b);
    
    System.out.println("a = " + a + ", b = " + b + " => c = " + c);
  }
}