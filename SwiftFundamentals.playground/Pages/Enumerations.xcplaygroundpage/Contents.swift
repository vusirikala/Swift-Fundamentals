//: [Previous](@previous)

import Foundation

func printXY(x: Double, y: Double) {
        print("\(x), \(y)")
}

enum Direction {
    case north, south, east, west
}
var x = 0.0
var y = 0.0
let delta = 5.0
var direction1 = Direction.east
var direction2: Direction = .north
var directions: [Direction] = [
    .north, .north, .east, .west, .east
]
printXY(x: x, y: y)


func updatePosition(direction: Direction, point: CGPoint) -> CGPoint {
    var x = point.x
    var y = point.y
    let delta = 5.0

    switch(direction) {
    case .east:
        x += delta
    case .west:
        x -= delta
    case .north:
        y += delta
    case .south:
        y -= delta
    }
    return CGPoint(x: x, y: y)
}

var thePoint: CGPoint = CGPoint(x: 0.0, y: 0.0)
thePoint = updatePosition(direction: Direction.north, point: thePoint)
printXY(x: thePoint.x, y: thePoint.y)


// CaseIterable lets us iterate through all cases of the photoNames in a for loop
enum photoNames: String, CaseIterable {
    case dog1 = "dog1.png"
    case dog2 = "dog2.png"
    case dog3 = "dog3.png"
}
print("The filename for \(photoNames.dog3) is \(photoNames.dog3.rawValue).")

for photo in photoNames.allCases {
    let filename = photo.rawValue
    print("The filename for \(photo) is \(filename).")
}
//: [Next](@next)
