//: [Previous](@previous)

import Foundation

print("Conditionals")

let hoursSlept = 8

// if statement
if hoursSlept <= 6 {
    print("I'm not happy")
} else if hoursSlept <= 10 {
    print("I feel great")
} else {
    print("Sleeping too much")
}


// if expression. Introduced in v5.9
let happiness = if hoursSlept <= 6 {
    "I'm not happy"
} else if hoursSlept <= 10 {
    "I feel great"
} else {
    "Sleeping too much"
}
print(happiness)

let validSleep: String? = if hoursSlept >= 0 {
    "Sleep is valid"
} else {
    nil
}

var isValidSleep: Bool = if hoursSlept >= 0 {
    true
} else {
    false
}

isValidSleep = hoursSlept >= 0

let someValue = hoursSlept > 17 ? "Amazing": "Oh no!"


print("\nSwitch statement and expression")
let dayOfWeek = "Wednesday"
switch dayOfWeek {
case "Monday":
    print("It's Monday")
case "Tuesday":
    print("It's Tuesday")
case "Wednesday":
    print("It's Wednesday")
case "Thursday":
    print("It's Thursday")
case "Friday":
    print("It's Friday")
case "Saturday", "Sunday":
    print("It's a weekend")
default:
    print("The day is not valid")
}

let message = switch dayOfWeek {
    case "Monday": "It's Monday"
    case "Tuesday": "It's Tuesday"
    case "Wednesday": "It's Wednesday"
    case "Thursday": "It's Thursday"
    case "Friday": "It's Friday"
    case "Saturday", "Sunday": "It's a weekend"
    default: "The day is not valid"
}
print(message)

func positionDescription(point: (x: Int, y: Int)) -> String {
    switch point {
    case (0, 0):
        "\(point) is at the origin"
    case (_, 0):
        "\(point) is on x-axis"
    case (0, _):
        "\(point) is on y-axis"
    case (0..., 0...):
        "\(point) is in the first quadrant"
    case (...0,0...):
        "\(point) is in the second quadrant"
    case (...0, ...0):
        "\(point) is in the third quadrant"
    case (...0, ...0):
        "\(point) is in the fourth quadrant"
    case (0...,...0):
        "\(point) is on the x-axis and y-axis"
    default:
        "\(point) is unknown"
    }
}
print(positionDescription(point: (0,-2)))

func onSineOrCosine(point: (x: Double, y: Double)) -> String {
    switch point {
        case let (x,y) where y == sin(x) || y == cos(x):
            "\(point) is on the sine or cosine curve"
        default:
        "\(point) is not on the sine or cosine curve"
    }
}

print(onSineOrCosine(point: (5, sin(5))))
print(onSineOrCosine(point: (5, cos(5))))
print(onSineOrCosine(point: (2, 1)))
//: [Next](@next)
