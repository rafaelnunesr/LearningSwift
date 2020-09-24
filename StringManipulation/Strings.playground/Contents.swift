import UIKit

var str1 = "Hello"
var str2 = " playground"

// MARK: CONCATENATE STRINGS
str1 += str2 // "Hello playground"
str1.append(str2) // "Hello playground"

var str3 = str1 + str2 // "Hello playground"
str3 = "\(str1) \(str2)" // "Hello playground"
str3 = [str1, str2].joined(separator: ",") // "Hello, playground"


// MARK: CONVERT INT -> STRING
let num = 31 // Int: 31
var strNum1 = String(num, radix: 16) // "1f"
var strNum2 = String(num) // String: "31"


// MARK: LOOP EACH CHARACTER
for chr in str1 {
    print(chr) // "H" -> "e" -> "l" ...
}


// MARK: FIRTS AND LAST
var str4 = str1.first // Optional("H")
var str5 = str1.last // Optional("o")


// MARK: FIRSTINDEX(OF:) // FIRSTINDEX(WHERE:)
var str6 = str1.firstIndex(of: "l") // Optional(2)
var str7 = str1.firstIndex{$0 < "f"} // Optional(1)


// MARK: CONTAINS
var str8 = str1.contains{"aeiou".contains($0)} // true


// MARK: FILTER
var str9 = str1.filter{"aeiou".contains($0)} // "eo"


// MARK: DROPFIRST & DROPLAST
var str10 = str1.dropFirst() // SUBSTRING "ello"
/*
 Substring pointing into the original string,
 so "e" in str10 is not the index 0, but index 1,
 because "e" is index 1 in str1
 */

str10 = str1.dropLast() // SUBSTRING "hell"


// MARK: PREFIX & SUFFIX
var str11 = str1.prefix(4) // SUBSTRING "hell"


// MARK: SPLIT
var str12 = "Hello World"
var str13 = str12.split{$0 == " "} // ["Hello", "World"]

// Indexes on a String are not Int values, but rather a special nested type, a String.Index (which is actually a type alias for String.

// MARK: INDEX
let ix = str1.startIndex
let ix2 = str1.index(ix, offsetBy:1)
let c = str1[ix2] // "e”

let d = str1[str1.index(after:ix)] // "e”

