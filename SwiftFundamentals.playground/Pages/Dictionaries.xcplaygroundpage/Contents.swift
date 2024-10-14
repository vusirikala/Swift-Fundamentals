//: [Previous](@previous)

import Foundation

print("Dictionaries")
var foodCalories: [String: Int] = ["banana": 105, "pizza": 285, "salad": 10]
// The order of the entries is not preserved.
print(foodCalories)

// foodCalories[key] is an optional
if let calories = foodCalories["cake"] {
    print(calories)
} else {
    foodCalories["cake"] = 350
}

// This doesn't add "cabbage" dot foodCalories
let calories: Int = foodCalories["cabbage", default: 0]
print(foodCalories)

for (k, v) in foodCalories {
    print("The number of calories in \(k) is \(v).")
}

print(foodCalories.keys)
print(foodCalories.values)

foodCalories.removeValue(forKey: "banana")
print(foodCalories)

// It doesn't give any error even if the key is not present
foodCalories.removeValue(forKey: "mango")
print(foodCalories)

//: [Next](@next)
