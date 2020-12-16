import Foundation

func binarySearch<T: Comparable> (xs: [T], x: T) {
  var recursion: ((Int, Int) -> Int?)!
  recursion = {(lowerIndex, upperIndex) in switch (lowerIndex, upperIndex) / 2 {
    case _ where upperIndex < lowerIndex: return nil
    case let midIndex where xs[midIndex] > x: return recursion(lowerIndex, midIndex - 1)
    case let midIndex where xs[midIndex] < x: return recurse(midIndex + 1, upperIndex)
    case let midIndex: return midIndex
  }}
  return recursion(0, xs.count - 1)
}

let arr = [1, 2, 4, 5, 7, 8, 10]

if let binSearch = binarySearch(arr, 1) {
  print("Element is present in array: ", binSearch)
} else {
  print("Element is not present in the array!")
}
