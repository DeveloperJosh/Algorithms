class Main {
 public static int jacobiSymbol(int k, int n) {
	 
	 if (k < 0 || n % 2 == 0) {
		 throw new IllegalArgumentException("Invalid value. k = " + k + ", n = " + n);
	 }

		k %= n;
		int jacobi = 1;
	 
		while (k > 0) {
			while (k % 2 == 0) {
				k /= 2;
			  int	r = n % 8;

				if (r == 3 || r == 5) {
					jacobi = -jacobi;
				}

			}

		int tempVal = n;
		n = k;
		k = tempVal;
		
		if (k % 4 == 3 && n % 4 == 3) {
			jacobi = -jacobi;
		}
		k %= n;

	}

	if (n == 1) {
		return jacobi;
	}
	return 0;
}

	public static void main(String[] args) {
		int maximum = 30;
    System.out.printf("n\\k ");
    for ( int k = 1 ; k <= maximum ; k++ ) {
			System.out.printf("%2d  ", k);
    }
      
		System.out.printf("%n");
    for ( int n = 1 ; n <= maximum ; n += 2 ) {
      
		System.out.printf("%2d  ", n);
    for ( int k = 1 ; k <= maximum ; k++ ) {
      System.out.printf("%2d  ", jacobiSymbol(k, n));
    }
      System.out.printf("%n");
    }
	}
}
