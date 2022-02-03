public class FibonacciNumbers {
    public static void main(String[] argv)
    {
        int current = 1;
        int last = 0;
        while(current < 1000)
        {
            System.out.print(", " + current);
            int next = current + last;
            last = current;
            current = next;
        }
        System.out.println(); // print a new line
    }
}