import UIKit

// Stored property

struct Student {
    var name: String
    var age: Int
}

var andrew = Student (name: "Andrew", age: 33)
print(andrew)

// Computed property

struct WeeklySalary {
    var hourlyWage: Double
    var workingHour: Double
    
    var wage: Double {
        get {
            return hourlyWage * workingHour
        }
        set {
            workingHour = newValue / hourlyWage
        }
    }
}

var myWeeklySalary = WeeklySalary(hourlyWage: 10000, workingHour: 4)
print(myWeeklySalary)
print(myWeeklySalary.wage)
myWeeklySalary.wage = 50000
print(myWeeklySalary.workingHour)


// Property observer

struct Student1 {
    var name: String {
        willSet {
            print("\(name) will change to \(newValue).")
        }
        didSet {
            print("\(oldValue) is changed to \(name)")
        }
    }
}

var jason = Student1 (name: "제이슨")
jason.name = "jason"

// Type property

struct SomeStruct {
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int {
        return 1
    }
}

SomeStruct.storedTypeProperty
SomeStruct.computedTypeProperty

print("\(SomeStruct.storedTypeProperty)")
print("\(SomeStruct.computedTypeProperty)")


