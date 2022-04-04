public class PythagoTripel {

	public static void main(String[] args) {
		int N = 100;
		for(int c = 1; c < N; c++)
		{
			for(int a = 1; a < c; a++)
			{
				double b = Math.sqrt(c*c - a*a);
				if( b == (int)b && a < b)
				{
					System.out.println(a + ", " + (int)b + ", " + c);
				}
			}
		}
	}
}
