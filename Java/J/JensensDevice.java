import java.util.function.*;
import java.util.stream.*;

class Main {
  
	static double sum(int lowerValue, int higherValue, IntToDoubleFunction f) {
		return IntStream.rangeClosed(lowerValue, higherValue).mapToDouble(f).sum();
  }

	public static void main(String[] args) {
		 System.out.println(sum(1, 100, (i -> 1.0 / i)));
	}
}
