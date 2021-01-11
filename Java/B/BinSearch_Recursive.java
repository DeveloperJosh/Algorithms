class Main {
	public static int binarySearch(int[] numerics, int target, int lowerIndex, int upperIndex) {
		if(upperIndex < lowerIndex) {
			return -1;
		}

		int midIndex = (lowerIndex + upperIndex) / 2;

		if (numerics[midIndex] > target) {
			return binarySearch(numerics, target, lowerIndex, midIndex - 1);
		} 
		else {
			return binarySearch(numerics, target, midIndex + 1, upperIndex);
		}
	}
	
	public static void main(String[] args) {
		int[] arr = {1, 3, 5, 6, 9, 10};
		int target = 0;
		int result = binarySearch(arr, target, 0, arr.length);

		if (result == -1) {
			System.out.println(target + " was not found in the array!");
		} 
		else {
			System.out.println(target + " was found in array element " + result);
		}

	}
}
