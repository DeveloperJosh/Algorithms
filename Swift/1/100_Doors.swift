import Foundation


enum doorStatus : String {
    case Opened = "Closed!"
    case Closed = "Open!"
}

var doorList = [doorStatus](repeating: doorStatus.Closed, count: 100)



for doorCount in 1...100 {
    let strideQuantity = stride(from: doorCount - 1, to: 100, by: doorCount)
    
     strideQuantity.map() {
        doorList[$0] = doorList[$0] == .Opened ? .Closed : .Opened
    }
}

for (indexCount, itemCount) in doorList.enumerated() {
    print("Door \(indexCount+1) is \(itemCount.rawValue)")
}
