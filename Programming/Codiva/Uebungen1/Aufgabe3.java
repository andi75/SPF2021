import java.util.Scanner;

public class Aufgabe3 {
    public static void main(String[] argv)
    {
        Scanner s = new Scanner(System.in);
        System.out.print("a = ? ");
        double a = s.nextDouble();
        System.out.print("b = ? ");
        double b = s.nextDouble();
        System.out.println();
                
        double r = Math.sqrt(a*a + b*b);
        double phi = 0;
        
        if(a == 0)
        {
            if(b > 0) { phi = 90; }
            if(b < 0) { phi = 270; }
        }
        else {
            phi = Math.atan(b / a) * 180.0 / Math.PI;
            if(a > 0 && b < 0) { phi = phi + 360; }
            if(a < 0) { phi = phi + 180; }
        }
        
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
