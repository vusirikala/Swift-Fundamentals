//: [Previous](@previous)

import Foundation

print("Loops")
for i in 0..<5 {
    print(i)
}

let data = ["tree", "house", "dinner"]
for item in data {
    print(item)
}

for _ in 0..<3 {
    print("Hello world!")
}

let minuteInterval = 4
let minutes = 60
// "to" is not included
for tick in stride(from: 0, to: minutes, by:  minuteInterval) {
    print(tick)
}


//: [Next](@next)
