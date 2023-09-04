import UIKit

/*
 variable : variable value
 var veriable name: data type = value
 */
var name: String = "Andrew"
var age: Int = 30

name
name = "Anderson"

age
age = 45

/*
 Constant : fixed value
 let constant name: data type = value
 */

let one: Int = 1
let two: Int = 2

/*
 function: actionable code
 func function name(parameter: data type) -> return type
 return value
 */

func sayHello(name: String) -> String {
    return "Nice to meet you, \(name)"
}

sayHello(name: "Andrew")

func introduce(name: String , age: Int) -> String {
    return "Hi, My name is \(name) , I'm \(age)"
}
introduce (name: name, age: age)

func add(a: Int, b:Int) -> Int{
    return a + b
}
add(a: 2, b: 3)

