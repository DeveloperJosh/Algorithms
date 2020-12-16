import Foundation

func binarySearch<T: Comparable> (xs: [T], x: T) -> Int? {
  var (lowerIndex, upperIndex) = (0, xs.count - 1)
  
  while lowerIndex <= upperIndex {
    switch (lowerIndex + upperIndex) / 2 {
      case let midIndex where xs[midIndex] > x: upperIndex = midIndex - 1
      case let midIndex where xs[midIndex] < x: lowerIndex = midIndex + 1
      case let midIndex: return midIndex
    }
  }
  return nil
}

let arr = [1, 2, 3, 4, 5, 6, 7, 9, 11]

if let binSearch = binarySearch(xs: arr, x: 1) {
	print("Element is present in array: ", binSearch)
} else {
	print("Element is not present in the array!")
}
