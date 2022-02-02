import java.util.Scanner;

public class RadiansDegrees {
  public static void main(String[] args) {
    System.out.println("Convert from Radians to Degrees or vice versa");

    Scanner scanner = new Scanner(System.in);

    System.out.println("Input = ?");
    double x = scanner.nextDouble();

    System.out.println(x + "° in radians: " + deg2rad(x));
    System.out.println(x + " in degrees: " + rad2deg(x) + "°");
  }
  
  public static double deg2rad(double angle)
  {
      return angle * 2 * Math.PI / 360.0;
  }
  
  public static double rad2deg(double angle)
  {
      return angle * 360.0 / (2 * Math.PI);
  }
}