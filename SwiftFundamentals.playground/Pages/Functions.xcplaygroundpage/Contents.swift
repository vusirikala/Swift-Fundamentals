//: [Previous](@previous)

import Foundation

print("Functions")
// The default value of isQuestion argument is set to false
func greet(name: String, greeting: String, isQuestion: Bool = false) -> String {
    "\(greeting), \(name)\(isQuestion ? "?" : "!")"
}
print(greet(name: "Ron", greeting: "How are you"))
print(greet(name: "Ron", greeting: "How are you", isQuestion: true))


// Variadic parameter 0 or more values of certain type
print("\n\nVariadic")
func sum(numbers: Double...) -> Double {
    var sum = 0.0
    for numbers in numbers {
        sum += numbers
    }
    return sum
}

print(sum(numbers: 1, 2, 3, 4, 5))
print(sum(numbers: 3))
print(sum())

// Doesn't work because a, b are constants
//func swap(a: Int, b: Int) {
//    let tempA = a
//    a = b
//    b = tempA
//}

print("\n\nInout parameters")
func swap(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}
var num1 = 13
var num2 = 17
print("num1: \(num1), num2: \(num2)")
swap(a: &num1, b: &num2)
print("num1: \(num1), num2: \(num2)")

print("\n\nFunction types")
func sumF(_ numbers: Double..., fn: (Double) -> Double) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += fn(number)
    }
    return sum
}
func square(x: Double) -> Double {
    x * x
}
print(sumF(1,2,3, fn: square))
print(sumF(1,2,3, fn: sqrt))
print(sumF(1.2,2.2,4.5, fn: floor))

//: [Next](@next)
