import UIKit

// if

var isChecked = false
if isChecked {
    print("Checked")
}else {
    print("Not Checked")
}

// else if

var time = 12

if time == 9 {
    print ("It's time for breakfast!")
}else if time == 12 {
    print ("It's time for lunch!")
}else if time == 18 {
    print ("It's time for dinner!")
}else {
    print ("It's freetime")
}


// switch
let weather = "rain"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Make a snowman")
case "sunny":
    print("Wear sunblock")
default:
    print("Enjoy your day!")
}

// guard

func getName(name: String?) -> String{
    guard let uName = name else {
        
        return "No name exists"
    }
    return uName
}

getName(name: "Andrew")
getName(name: nil)






