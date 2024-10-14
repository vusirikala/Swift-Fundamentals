//: [Previous](@previous)

import Foundation

for i in -3...3 {
    print(i)
}

print("-------")

for i in -3..<3 {
    print(i)
}

print("-------")

var sum = 0
var j = 0
while j < 10 {
    sum += j
    j = j + 1
}
print(sum)

print("-------")

func sumExample(n: Int) -> Int {
    var sum = 0
    var j = 0
    while j <= n {
        sum += j
        j += 1
    }
    return sum
}

for n in 10..<20 {
    print("The sume of 0 + ... + \(n) is \(sumExample(n: n))")
}

print("-------")
// Repeat loops are less common.
// Do it at least once
// In other languages, it is called do-while loop
var i = 1
let n = 10
repeat {
    print(i)
    i += 1
} while(i<=n)

print("-------")

//: [Next](@next)
