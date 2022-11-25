import Foundation

let input = readLine()!
var inputArr = input.components(separatedBy: " ")

let a = Int(inputArr[0])!
let b = Int(inputArr[1])!

if a > b {
    print(">")
} else if a < b {
    print("<")
} else {
    print("==")
}
