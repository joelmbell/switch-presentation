
import Foundation


// Look at Control Flow Portion of Swift 3.1 book

// Look at Patterns Portion of Swift 3.1 book


var myDouble: Any = 2.0

switch myDouble {

case let thisDouble as Double where thisDouble >= 2.0:
    print("is a double thats at least 2.0")
case is Double:
    print("its a double \(myDouble)")
case is Float:
    print("its a float")
case is Int:
    print("its a float")
default:
    print("its something else.")
}


var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("Hello")
things.append((3.0, 5.0))
things.append({ (name: String) -> String in "Hello, \(name)" })

for thing in things {
    switch thing {
    case 0 as Int:
        print("Zero as an Int")
    case 0 as Double:
        print("Zero as a Double")
        print("integer between zero and 100")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print.")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point as \(x), \(y)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("Something else")
    }
}

// Ranges
var number = 50

switch number {
case 0...40:
    print("Number between 0 and 40")
case 41...80:
    print("Number between 41 and 80")
case 81...100:
    print("Number between 81 and 100")
default:
    print("Number greater than 100 or less than 0")
}














