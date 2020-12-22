#import <Foundation/Foundation.h>

@interface NSArray (BinarySearch)
- (NSInteger) binSearch:(id)key;
@end

@implementation NSArray (BinarySearch)
- (NSInteger)binSearch:(id)key {
    NSInteger lowerIndex = 0;
    NSInteger upperIndex = [self count] - 1;
    while (lowerIndex <= upperIndex) {
        NSInteger midIndex = lowerIndex + (upperIndex - lowerIndex) / 2;
        id centVal = self[midIndex];
        
        switch([centVal compare:key]) {
            case NSOrderedAscending:
                lowerIndex = midIndex + 1;
                break;
            case NSOrderedDescending:
                upperIndex = midIndex - 1;
                break;
            case NSOrderedSame:
                return midIndex;
        }
    }
    return NSNotFound;
}
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *values = @[@1, @2, @3, @4];
        NSLog(@"Value is in array element: %li", [values binSearch:@4]);
    }
    return 0;
}
