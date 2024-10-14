//: [Previous](@previous)

import Foundation

// After v5.9 version, we need not use return
func add (x: Int, y: Int) -> String {
    "\(x) + \(y) = \(x + y)"
}

print(add(x: 2, y: 3))


// When we use _ before the argument name in function, we don't have to annoatate the arguments when calling the function.
func sub (_ x: Int, _ y: Int) -> String {
    "\(x) - \(y) = \(x - y)"
}
print(sub(2, 3))

//: [Next](@next)
