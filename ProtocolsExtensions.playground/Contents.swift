import UIKit

protocol ColorChangable {
    func changeColor()
}

extension ColorChangable {
    func changeColor() {
        print("changing to white")
    }
}

protocol TextClearable {
    func clearText()
}

extension TextClearable {
    func clearText() {
        print("cleaning Text")
    }
}

protocol ColorAndTextUpdatable: ColorChangable, TextClearable {}

class MyButton {
    // functionality that makes your button special
    
    func changeColor() {
        print("changing to red")
    }
}

extension MyButton: ColorAndTextUpdatable {}

struct MyLabel: ColorChangable, TextClearable {
    // functionality that makes your label special
    
    func changeColor() {
        print("changing to black")
    }
    
    func clearText() {
        print("cleaning last letter")
    }
}

class MyView: ColorChangable {
    // functionality that makes your view special
}


let myButton = MyButton()
myButton.changeColor()
myButton.clearText()

let myLabel = MyLabel()
myLabel.changeColor()
myLabel.clearText()

let myView =  MyView()
myView.changeColor()
