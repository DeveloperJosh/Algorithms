import Foundation

func insertSuffix(num: Int) -> String {
    if num % 100 / 10 == 1 {
        return "th"
    }
 
    switch num % 10 {
    case 1:
        return "st"
    case 2:
        return "nd"
    case 3:
        return "rd"
    default:
        return "th"
    }
}
 
for Nth in 0...25 {
    print("\(Nth)\(insertSuffix(num: Nth)) ")
}
print()
for Nth in 250...265 {
    print("\(Nth)\(insertSuffix(num: Nth)) ")
}
print()
for Nth in 1000...1025 {
    print("\(Nth)\(insertSuffix(num: Nth)) ")
}
print()
