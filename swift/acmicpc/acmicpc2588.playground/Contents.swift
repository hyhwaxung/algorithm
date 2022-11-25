import Foundation

let a = Int(readLine()!)
var b = Int(readLine()!)
var mul = 1
var sum = 0

for i in 1...3 {
    var d = Int(b!)%10
    print(a! * d)
    
    b = b! / 10
    sum = sum + (a! * d) * mul
    mul = mul * 10
}

print(sum)

