def binSearch(arr, target):
	lowerIndex = 0
	upperIndex = len(arr) - 1

	while lowerIndex <= upperIndex:
		midIndex = (lowerIndex + upperIndex) // 2

		if arr[midIndex] < target:
			lowerIndex = midIndex + 1
		elif arr[midIndex] > target:
			upperIndex = midIndex - 1
		else:
			return midIndex
	return -1

arr = [1, 2, 3, 4, 5]
target = 5
result = binSearch(arr, target)

if result == -1:
	print("Element is not present in the array!")
else:
	print("Target was found in array element: ", str(result))
