import java.util.Scanner;

public class Aufgabe4 {
    public static void main(String[] argv)
    {
        Scanner s = new Scanner(System.in);
        System.out.print("n = ? ");
        int n = s.nextInt();
        System.out.println();
        
        for(int i = 1; i <= n; i++)
        {
            if(n % i == 0)
            {
                System.out.print(i + " ");
            }
        }
        System.out.println();
    }
}
