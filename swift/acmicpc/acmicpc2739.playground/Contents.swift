import Foundation

let input = readLine()!
var inputArr = input.components(separatedBy: " ")

let N = Int(inputArr[0])!


for i in 1...9 {
    print("\(N) * \(i) = \(N*i)")
}
