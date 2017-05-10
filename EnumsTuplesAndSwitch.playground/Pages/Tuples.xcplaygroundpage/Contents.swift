//: Playground - noun: a place where people can play

import UIKit


// Tuple with element names
var person = (firstName: "John", lastName: "Smith")
var firstName = person.firstName
var lastName = person.lastName



// Tuple without element names
var point = (15, 23)
point.0
point.1



// Tuples are value objects. They are copied when passed around
var origin = (x: 0, y: 0)
var newOrigin = origin
newOrigin.x = 10
origin // original
newOrigin // new with x=10



// The Type of a Tuple is determined by thevalues it has
var myTuple = ("Joel", 30, true)
myTuple is (String, Int, Bool) // True



// Empty Tuple is the same as the Void Type
() is Void



// Decomposting Tuples
var employee = (name: "Joel Bell", department: "Engineering")
var (empName, empDepartment) = employee
empName
empDepartment

// you can ignore certain parts of the tuple
var (justName, _) = employee
justName



// Returning Multiple Values from a Function
func divmod(_ a: Int, _ b: Int) -> (Int, Int) {
    return (a / b, a % b)
}
divmod(5, 2)




let switchPoint = (7, 7)

switch switchPoint {
case (let x, let y) where y * 2 < x:
    print("double y is less than x")
case let (x, y) where x < y:
    print("x is less than y")
case let (x, y) where x > y:
    print("x is greater than y")
default:
    print("Default")
}


let name = (firstName: "Joel", lastName: "Bell")


switch name {
case let (first, last) where first.characters.count == last.characters.count:
    print("First and last names have the same amount of characters!")
case let (f, l) where f.characters.count > l.characters.count:
    print("First name has more characters.")
case let (f, l) where f.characters.count < l.characters.count:
    print("Last name has more characters.")
default:
    print("Default Name")
}
















