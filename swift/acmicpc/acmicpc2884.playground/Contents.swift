import Foundation

let input = readLine()!
let inputArr = input.components(separatedBy: " ")

var H = Int(inputArr[0])!
var M = Int(inputArr[1])!

// 45분 일찍 알람 설정하기 0 30
M = M - 45  // - 15
if M < 0 {
    H = H - 1
    M = M + 60
}

if H < 0 {
    H = H + 24
}

print("\(H) \(M)")
