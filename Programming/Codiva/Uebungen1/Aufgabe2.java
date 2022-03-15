import java.util.Scanner;

public class Aufgabe2 {
    public static void main(String[] argv)
    {
        Scanner s = new Scanner(System.in);
        System.out.print("r = ? ");
        double r = s.nextDouble();
        System.out.print("phi = ? ");
        double phi = s.nextDouble();
        
        double a = r * Math.cos(phi * Math.PI / 180.0);
        double b = r * Math.sin(phi * Math.PI / 180.0);
        
        System.out.println("z = " + r + " cis " + phi);
        if(b >= 0)
        {
            System.out.println("z = " + a + " + " + b + "i");
        }
        else
        {
            System.out.println("z = " + a + " - " + -b + "i");            
        }
    }
}
