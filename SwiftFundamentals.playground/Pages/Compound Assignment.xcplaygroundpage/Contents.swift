//: [Previous](@previous)

import Foundation

print("Compound Operators")

var x = 2
print(x)

x += 1
// x++ is not possible in Swift
print(x)

x = x - 1
print(x)

x *= 2
print(x)

/// Computes the n-th element in the sequence: a1, a1 + d, a1 + 2d, ...
///  For exampl: The thred elemnt in the sequence 1, 4, 7, 10, 13...
/// - Parameters:
///   - a1: The first element in the sequence/progression
///   - d: Difference/distance between consecutive elements
///   - n: Position
/// - Returns: The n-th element of the arithmentic progression
func arithmeticProgression(a1: Double, d: Double, n: Int) -> Double {
    return a1 + Double(n - 1) * d
}

print("---------")
for n in 1...10 {
    print(arithmeticProgression(a1: 1, d: 3, n: n))
}

// Calculate 1 + 4 + 7 + 10 (if n = 4, a1 = 1, d = 3)
// Sn = a1 + a2 + a3 + ... + an
func sumArithmeticProgression(a1: Double, d: Double, n: Int) -> Double? {
    if n <= 0 {
        return nil
    }
    var sum = 0.0
    for i in 1...n {
        sum += arithmeticProgression(a1: a1, d: d, n: i)
    }
    return sum
}
print("---------")
func printSumArithmeticProgression(a1: Double, d: Double, n: Int) {
    if let sum = sumArithmeticProgression(a1: a1, d: d, n: n) {
        print(sum)
    } else {
        print("Invalid argument, n must be positive")
    }
}
for n in 1...10 {
    printSumArithmeticProgression(a1: 1, d: 3, n: n)
}


//: [Next](@next)
