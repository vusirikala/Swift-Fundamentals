//: [Previous](@previous)

import Foundation

print("Sets")

// The order doesn't matter for sets
// Duplicates are removed in sets
var setOfNumbers = Set([1,5,7,3,3,2, 1,5])
print(setOfNumbers)

var fruits: Set<String> = ["apple", "kiwi", "banana"]
print(fruits)

var vegetables = Set(["apple", "kiwi", "banana"])
print(vegetables)

var A = Set([1, 2, 3])
var B = Set([2, 3, 4])
print(A.union(B))
print(A.intersection(B))
print(A.subtracting(B))
print(B.subtracting(A))

for a in A {
    print(a)
}

print(A.isSubset(of: B))
print(A.contains(2))
   
//: [Next](@next)
