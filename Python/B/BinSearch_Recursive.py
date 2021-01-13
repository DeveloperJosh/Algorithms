def binSearch(arr, lowerIndex, upperIndex, target):
	if upperIndex >= lowerIndex:
		midIndex = (lowerIndex + upperIndex) // 2

		if arr[midIndex] == target:
			return midIndex
		elif arr[midIndex] > target:
			return binSearch(arr, lowerIndex, midIndex - 1, target)
		else:
			return binSearch(arr, midIndex + 1, upperIndex, target)
	
	else:
		return -1

arr = [1, 2, 3, 4, 5]
target = 5
result = binSearch(arr, 0, len(arr) - 1, target)

if result != -1:
	print("Element is present in array element: ", str(result))
else:
	print("Element is not present in the array!")
