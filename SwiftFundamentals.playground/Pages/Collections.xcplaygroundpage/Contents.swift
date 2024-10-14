//: [Previous](@previous)

import Foundation

print("Collections")

var favoriteNumbers = [7, sqrt(2), Double.pi]
print(favoriteNumbers)
favoriteNumbers.append(12.3)
print(favoriteNumbers)


var manyZeros = Array(repeating: 0, count: 7)
print(manyZeros)

var manyHummus = Array(repeating: "Hummus", count: 10)
print(manyHummus)

for number in favoriteNumbers {
    print("One of my favorite numbers is \(number)")
}

print(manyZeros.count)
print(favoriteNumbers[0...1])
print(favoriteNumbers[0..<1])

favoriteNumbers.insert(91.3, at: 1)
print(favoriteNumbers)
for index in 0..<favoriteNumbers.count {
    print("One of my favorite numbers is \(favoriteNumbers[index])")
}

for (index, value) in favoriteNumbers.enumerated() {
    print("One of my favorite numbers is \(value) at index \(index)")
}

//: [Next](@next)
