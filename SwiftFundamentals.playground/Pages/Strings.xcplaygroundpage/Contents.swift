//: [Previous](@previous)

import Foundation

let quote = "Learn from yesterday,\n Live for today,\n Hope for tomorrow\n"
print(quote)

let multilineQuoote = """
    Lean from 
        yesterday,
    
    Live for today,

    Hope for 
        tomorrow.
"""
print(multilineQuoote)

let anotherQuote = "\"Learn from yesterday,\n Live for today,\n Hope for tomorrow\""
print(anotherQuote)

// Raw string.  Instead of \" we can now use " directly
let anotherQuoteRaw = #"  "Learn from yesterday, Live for today, Hope for tomorrow"  "#
print(anotherQuoteRaw)

var myString = ""
if myString.isEmpty {
    print("The given string is empty")
} else {
    print("The given string \"\(myString)\" is not empty")
}
myString += "hello"

let emptyString = ""
let emptyString2 = String()

print("The string \(myString) has \(myString.count) characters")

// ternary operator
// a ? b : c
let plural = myString.count == 1 ? "" : "s"
print("The string \(myString) has \(myString.count) character\(plural)")

for ch in myString {
    print(ch)
}

// This is not possible in String
//for i in 0..<(myString.count) {
//    print(myString[i])
//}

print(myString.dropFirst(3))
print(myString.dropFirst(2))
// By default we only drop one character
print(myString.dropFirst())
print(myString.dropLast())
print(myString)

//: [Next](@next)
