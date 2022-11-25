/*
 1. 입력 받는 방법 readLine()! -> String?
    playground 에서는 입력을 받을 수 없고 xcode Command Line Tool 에서 가능
 2. components -> [String]
    import Foundation 해야하고 split이랑 비슷한 기능
 */

import Foundation

var input = readLine()!

let arr = input.components(separatedBy: " ")

let a = Int(arr[0])!
let b = Int(arr[1])!

print(a + b)

