import java.util.Scanner;

public class Aufgabe5 {
    public static void main(String[] argv)
    {
        Scanner s = new Scanner(System.in);
        System.out.print("n = ? ");
        int n = s.nextInt();
        System.out.println();
        
        int count = 0;
        
        for(int i = 1; i <= n; i++)
        {
            if(n % i == 0)
            {
                count += 1;
            }
        }
        System.out.println(n + " hat " + count + " Teiler");
    }
}
