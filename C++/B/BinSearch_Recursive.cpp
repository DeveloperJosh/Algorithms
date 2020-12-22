#include <iostream>

template <class T> int binSearch(const T arr[], int lowerIndex, int upperIndex, T value) {
    if(upperIndex < lowerIndex) {
        return -1;
    }
    
    auto midIndex = (lowerIndex + upperIndex) / 2;
    
    if(value < arr[midIndex]) {
        return binSearch(arr, lowerIndex, midIndex - 1, value);
    } else if(value > arr[midIndex]) {
        return binSearch(arr, midIndex + 1, upperIndex, value);
    } return midIndex;
}

int main(int argc, const char * argv[]) {

    int arr[] = {1, 2, 4, 6, 8, 10};
    int resOne, resTwo, xyz;
    xyz = sizeof(arr) / sizeof(arr[0]);
    resOne = binSearch(arr, 0, xyz, 5);
    resTwo = binSearch(arr, 0, xyz, 4);
    
    if(resOne == -1) {
        std::cout << "Value is not found in the array!";
    } else {
        std::cout << "Value is found in array element: ";
    }
    
    if(resTwo == -2) {
        std::cout << "Value is not found in the array!";
    } else {
        std::cout << "Value is found in array element: ";
    }
    
    return 0;
}
