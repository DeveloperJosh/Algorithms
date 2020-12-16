import Foundation
import BigInt

public func bernoulli_numbers <T: BinaryInteger & SignedNumeric> (numbers: Int) -> Frac<T> {
  guard numbers != 0 else {
    return 1
  }
  


var arr = [Frac<T>]()

for x in 0...numbers {
  arr.append(Frac(numerator: 1, denominator: T(x) + 1))
  
  for y in stride(from: x, through: 1, by: -1) {
    arr[y-1] = (arr[y-1] - arr[y]) * Frac(numerator: T(y), denominator: 1)
  }
}

return arr[0]
}

for z in 0...60 {
	let bernoulli_nums = bernoulli_numbers(numbers: z) as Frac<BigInt>

	guard bernoulli_nums != 0 else {
		continue
	}
	print("B(\(z)) = \(bernoulli_nums)")
}
