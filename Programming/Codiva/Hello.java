import java.util.Scanner;

public class Hello {

    public static void main(String argv[]) {
        System.out.println("Hello, world!");       
        System.out.println("What is your name?");
        
        Scanner s = new Scanner(System.in);
        String name = s.next();
        
        System.out.println("Hello, " + name);
    }
}
