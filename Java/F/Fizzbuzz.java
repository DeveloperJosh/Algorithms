class fizzBuzz {
  public static void main(String[] args) {
    for(counter = 1; counter <= 100; counter++) {
      if (counter % 15 == 0) {
        System.out.println("Fizzbuzz\n");
      } 
      else if (counter % 5 == 0) {
        System.out.println("Buzz\n");
      } 
      else if (counter % 3 == 0) {
        System.out.println("Fizz\n");
      } 
      else {
        System.out.println(counter, "\n");
      }
    }
  }
}
