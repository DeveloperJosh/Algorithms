import Foundation

for num in 1...100 {
	switch(num % 3, num % 5) {
		case(0, 0):
			print("Fizzbuzz")
		case(_, 0):
			print("Buzz")
		case(0, _):
			print("Fizz")
		default:
			print(num)
	}
}
