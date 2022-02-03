
public class ForAndWhileLoops {

    public static void main(String[] args) {
        // a for loop that prints the numbers 0,2,4,6,8
        for (int i = 0; i < 5; i++) {
            int n = 2 * i;
            System.out.println(n);
        }
        // a while loop that prints the numbers 0,2,4,6,8
        int j = 0;
        while (j < 10) {
            System.out.println(j);
            j += 2;
        }
    }
}
