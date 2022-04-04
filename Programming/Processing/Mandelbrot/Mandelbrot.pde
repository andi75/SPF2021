size(900, 600);

double zmin_a = -2; 
double zmin_b = -1;
double zmax_a = 1;
double zmax_b = 1;

int N = 100;
for(int y = 0; y < height; y++)
{
  for(int x = 0; x < width; x++)
  {
    double tx = (double)x / (double) (width - 1);
    double ty = (double)y / (double) (height - 1);
    double c_a = zmin_a + tx * (zmax_a - zmin_a);
    double c_b = zmin_b + ty * (zmax_b - zmin_b);
    double z_a = c_a;
    double z_b = c_b;
    int n = 0;
    while(z_a * z_a + z_b * z_b < 4 && n < N)
    {
      double z2_a = z_a * z_a - z_b * z_b;
      double z2_b = 2 * z_a * z_b;
      z_a = z2_a + c_a;
      z_b = z2_b + c_b;
      n += 1;
    }
    if(n % 2 == 0) {
      point(x, height - y - 1);
    }
  }
}
    
