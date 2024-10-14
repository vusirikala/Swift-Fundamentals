import UIKit

func printDashes() {
    print("--------")
}

// Var variables can be changed
var greeting = "Hello, playground"
print(greeting)
greeting = "Likes Humms"
print(greeting)
// greeting = 5  Not possible after assigning string first
greeting = "Satya, " + greeting
print(greeting)

var x: String = "Hello"
print(x)
x = "World"
print(x)
// x = 5  Not possible after defining x as String

// Let variables are constant
let y = "ConstantData"
print(y)
// y = "Something"  Not possible.

let name = "Satya"

let listOfPeople = ["Ron", "Jane", "Bob"]
printDashes()

for name in listOfPeople {
    greeting = name + " " + "likes hummus"
    print(greeting)
    
    // String interpolation
    greeting = "I think \(name) likes hummus"
    print(greeting)
    
    print("I don't think \(name) likes hummus")
}

print("name after for loop is \(name)")

let names: [String] = [
    "Ron", "Elmo", "Satya"
];

for name in names {
    print("\(name) likes to skateboard")
}

struct PersonWithHobby {
    let name: String
    let hobby: String
}

let people: [PersonWithHobby] = [
    PersonWithHobby(name: "ron", hobby: "Skateboarding"),
    PersonWithHobby(name: "elmo", hobby: "Swimming"),
    PersonWithHobby(name: "satya vusirikala", hobby: "Coding")
]


printDashes()
for person in people {
    print("\(person.name) likes to \(person.hobby)")
    print("\(person.name.capitalized)")   // Just the first letter of every word is uppercase
    print("\(person.name.uppercased())")  // The entire string is upper cased
}

// Introduce optionals
var a: Int = 7
var b: Int? = 10 // b is an optional. It can be an integer or nil
b = nil

struct PersonWithOptionalHobby {
    let name: String
    let hobby: String?
}
let peoplewithhobbies: [PersonWithOptionalHobby] = [
    PersonWithOptionalHobby(name: "ron", hobby: "Skateboarding"),
    PersonWithOptionalHobby(name: "elmo", hobby: nil),
    PersonWithOptionalHobby(name: "satya vusirikala", hobby: "Coding")
]
printDashes()
for person in peoplewithhobbies {
    if person.hobby == nil {
        print("\(person.name) doesn't have a hobby")
    } else {
        // Prints Optional(person.hobby). Not the right way to print an option.
        print("\(person.name.capitalized) likes to \(person.hobby)!")
    }
}

printDashes()
for person in peoplewithhobbies {
    if let hobby = person.hobby {
        print("\(person.name.capitalized) likes to \(hobby)!")
    } else {
        print("\(person.name) doesn't have a hobby")
    }
}

printDashes()
