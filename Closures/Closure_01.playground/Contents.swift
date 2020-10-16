import UIKit

// A closure is a variable that holds code. A function as a variable.
var closureVar = {
    print("This is a function inside  variable.")
}

closureVar()

let stringToInt: (String) -> Int =  { inputString in
    Int(inputString)! // if it's just one line, it doesn't neeed the work return
}

stringToInt("83")
