//#!/usr/bin/env swift

import Foundation

struct boopTest {
    var notSoSecret = "Hello world!"
    private var numericalSecret = 140
}
 
let boopCall = boopTest()
let boopMirror = Mirror(reflecting: boopCall)
 
if let numericalSecret = boopMirror.children.filter({ $0.label == "numericalSecret" }).first?.value {
    print("The secret value is: \(numericalSecret)")
}
