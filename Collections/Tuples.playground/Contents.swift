import UIKit

// MARK: DECLARATION
var myTuple1: (Int, String)
var myTuple2 = (0, "Zero")

// MARK: USAGE
var myTuple3: (Int, String) = (1, "One")
myTuple3.0 // -> 1 index

// MARK: enumerate
let s = "hello"

for (ix,c) in s.enumerated() {
    print("character \(ix) is \(c)")
}

for t in s.enumerated() {
    print("character \(t.offset) is \(t.element)")
}

// MARK: ASSIGN
myTuple3.0 = 2 // now myTuple3 is (2, "One")

// MARK: LABELS
var myTuple4 : (first:Int, second:String) = (1, "One")
var myTuple5 = (first:1, second:"One")

var x = myTuple5.first // 1
myTuple5.first = 2
var y = myTuple5.0 // 2”

