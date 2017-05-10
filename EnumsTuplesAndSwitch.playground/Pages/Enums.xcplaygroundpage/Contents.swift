import Foundation

/*
 Much of this content is taken from "The Swift Programming Language (Swift 3.1)" iBook by Apple.
 */

enum CompassPoint {
    case north
    case south
    case east
    case west
}

// You can specify them on one line if you want
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}


var directionToHead = CompassPoint.north
var otherDirectionToHead: CompassPoint = .north

switch directionToHead {
case .north:
    print("Lots of planets have a north.")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises.")
case .west:
    print("Where the skies are blue.")
}

let somePlanet = Planet.earth

switch somePlanet {
case .earth:
    print("Mostly Harmless")
default:
    print("Not a same place for humans.")
}






enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = Barcode.qrCode("ABCDEFGHIJKLMNOP")


/*
 You can place a single let or var annotation before the case name for brevity if all
 if the items in the tuple are going to be that type of variable
 */
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}



// Check enum without switch statement
if case let .qrCode(code) = productBarcode {
    print("QR Code: \(code)")
}


// Bonus, Optionals are just enums :D
var someOptional: Int? = 42
if case .some(let x) = someOptional {
    print("Value of optional with some value: \(x)")
}
// Shorthand way of expressing the above.
if case let x? = someOptional {
    print("Shorthand way of showing Value of optional with some value: \(x)")
}

someOptional = nil
switch someOptional {
case .some(let value):
    print("value of optional inside switch statement: \(value)")
case .none:
    print("empty!")
}




