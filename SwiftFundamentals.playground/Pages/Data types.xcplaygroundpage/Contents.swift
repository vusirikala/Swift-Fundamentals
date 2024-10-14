//: [Previous](@previous)

import Foundation

print("Let's talk about data types")
print("TOPICS: Int, Double, Float, \"Type of\"")
print("----------")

var a: Int = 6
a = a + 1
a += 1
a -= 200
print(a)

var b = 100
// Not possible. 100.0 is considered Double
// var c: Int = 100.0
// This is of type Double. The compiler uses Double by default
var c = 100.0
print("The variable 'b' is of type \(type(of: b))")
print("The variable 'c' is of type \(type(of: c))")

var d: Float = 100.0
print("The variable 'd' is of type \(type(of: d))")

print("----------")
print("Largest integer is \(Int.max)")
print("Smallest integer is \(Int.min)")

print("Largest double is \(Double.greatestFiniteMagnitude)")
print("Smallest double is \(-Double.greatestFiniteMagnitude)")

print("Largest float is \(Float.greatestFiniteMagnitude)")
print("Smallest float is \(-Float.greatestFiniteMagnitude)")

print("----------")
print("Division")
print(7/2)  // Integer division. Outputs 3
print(7.0/2)
print(7/2.0)
print(7/Double(2))

let x = 112
let divisor = 5
let quotient = x / divisor
let remainder = x % divisor
print("\(x) = \(divisor) * \(quotient) + \(remainder)")

func divisionAlgorithm(x: Int, divisor: Int) -> String {
    let quotient = x / divisor
    let remainder = x % divisor
    return if remainder == 0 {
         "\(x) = \(divisor) * \(quotient)"
    } else {
        "\(x) = \(divisor) * \(quotient) + \(remainder)"
    }
}

for divisor in 1..<10 {
    print(divisionAlgorithm(x: x, divisor: divisor))
}

//: [Next](@next)

