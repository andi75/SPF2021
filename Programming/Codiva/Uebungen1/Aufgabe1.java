public class Aufgabe1 {
    public static void main(String[] argv)
    {
        int sum = 0;
        for(int i = 1; i <= 100; i++)
        {
            sum += i*i;
        }
        System.out.println("Die Summe der Quadratzahlen von 1 bis 100 ist " + sum);
    }
}