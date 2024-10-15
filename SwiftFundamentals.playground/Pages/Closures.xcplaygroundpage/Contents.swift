//: [Previous](@previous)

import Foundation

print("Closuers")
func mathOp(a: Int, b: Int, fn: (Int, Int) -> Int) -> Int {
    fn(a, b)
}

func add(a: Int, b: Int) -> Int {
    return a + b
}

func multiply(a: Int, b: Int) -> Int {
    return a * b
}

print(mathOp(a: 1, b: 2, fn: add))
print(mathOp(a: 1, b: 2, fn: multiply))
print(mathOp(a: 1, b: 2, fn: +))
print(mathOp(a: 1, b: 2, fn: -))
print(mathOp(a: 1, b: 2, fn: { (a: Int, b: Int)  -> Int in a + b
} ))

// As function is the last argument for mathOp, we could also use this syntax when calling mathOp
// This is called trailing closure. It's extensively used in views
// "in" is a keyword here used in closures
print(mathOp(a: 1, b: 2) { (a: Int, b: Int)  -> Int in a + b
})

// Avoidign explicitly specifying the arguments. $0, $1 correspond to the argument of the lamdba function
print(mathOp(a: 1, b: 2) { $0 + $1 })

let simpleClosure = {
    print("this is a simple closure")
}
simpleClosure()
let someValue = simpleClosure
someValue()

let addClosure = { (a: Int, b: Int) -> Int in a + b }
print(addClosure(1, 2))

//: [Next](@next)
