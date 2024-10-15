//: [Previous](@previous)

import Foundation

print("Higher Order functions and functional programming")

// Filter example
let list = [1, 2, 3, 4, 5]
var evenList = list.filter { listItem in listItem % 2 == 0}
var oddList = list.filter { listItem in listItem % 2 != 0}
print(evenList)
print(oddList)

evenList = list.filter { $0 % 2 == 0 }
oddList = list.filter { $0 % 2 != 0 }
print(evenList)
print(oddList)

// Map example
let numbers: [Int] = [1, 2, 3, 4, 5]
var squaredNumbers = numbers.map { $0 * $0 }
print(squaredNumbers)

// Sorted example
let characters = ["spider man", "big bird", "hulk", "elmo", "cookie monster", "iron man"]
var sortedCharacters = characters.sorted(by: <)
print(sortedCharacters)

sortedCharacters = characters.sorted(by: >)
print(sortedCharacters)

sortedCharacters = characters.sorted(by: <).map {$0.uppercased().replacingOccurrences(of: " ", with: "_")}
print(sortedCharacters)

// Reduce
let nums = [1, 2, 3, 4, 5]
// 0 is the starting value
let sum = nums.reduce(0, +)
print(sum)

let product = nums.reduce(1, *)
print(product)

let words = ["hello", "world", "swift", "is", "awesome"]
print(words.reduce("", {(result, word) in return result + " " + word}))
print(words.reduce("", {$0 + " " + $1}))
print(words.reduce(0, {$0 + $1.count}))


// Compact map
let strings = ["1", "three", "2", "tree", "four", "5.0"]
let numbs = strings.compactMap { Int($0) }
print(numbs)

// Join
let words2 = ["hello", "world", "swift", "is", "awesome"]
print(words2.joined(separator: " "))

// Flat map
let numbers2: [[Int]] = [[1, 2], [3, 4], [5, 6]]
let flatNumbers = numbers2.flatMap { $0 }
print(flatNumbers)

// Split
let hi = "hello world!"
print (hi.split(separator: " "))
print (hi.split(separator: ""))

// Removing caracter o
print(hi.split(separator: "o").joined())


//: [Next](@next)
