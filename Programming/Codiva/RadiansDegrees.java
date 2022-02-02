import java.util.Scanner;

public class RadiansDegrees {
  public static void main(String[] args) {
    System.out.println("Convert from Radians to Degrees or vice versa");

    Scanner scanner = new Scanner(System.in);

    System.out.println("Input = ?");
    double x = scanner.nextDouble();
    double rad_x = x * 2 * Math.PI / 360.0;
    double deg_x = x * 360.0 / (2 * Math.PI);
    
    System.out.println(x + "° in radians: " + rad_x);
    System.out.println(x + " in degrees: " + deg_x + "°");
  }
}