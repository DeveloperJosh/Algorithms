class Main {
	public static int binarySearch(int[] numerics, int check) {
		int lowerIndex = 0;
		int upperIndex = numerics.length - 1;

		while(upperIndex >= lowerIndex) {
			int midIndex = (lowerIndex + upperIndex) >>> 1;

			if (numerics[midIndex] > check) {
				upperIndex = midIndex - 1;
			}
			else if (numerics[midIndex] < check) {
				lowerIndex = midIndex + 1;
			}
			else {
				return midIndex;
			}
		}
	return -1;
	}
	
	public static void main(String[] args) {
		int[] arr= {2, 4, 6, 8, 11};
		int target = 4;
		int results = binarySearch(arr, target);

		if (results == -1) {
			System.out.println(target + " is not within the array.");
		} 
		else {
			System.out.println(target + " was found in array element: " + results);
		}
	}
}
