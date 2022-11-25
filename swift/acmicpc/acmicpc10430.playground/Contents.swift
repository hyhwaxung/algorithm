import Foundation

let input = readLine()!

var inputArr = input.components(separatedBy: " ")

let a = Int(inputArr[0])!
let b = Int(inputArr[1])!
let c = Int(inputArr[2])!

print((a+b)%c)
print(((a%c)+(b%c))%c)
print((a*b)%c)
print(((a%c) * (b%c))%c)
