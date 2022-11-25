//
//  main.swift
//  acmicpc10871
//
//  Created by 정현화 on 2022/04/29.
//

import Foundation


var input = readLine()!.components(separatedBy: " ")
let N = Int(input[0])!
let X = Int(input[1])!


input = readLine()!.components(separatedBy: " ")
for i in 0..<N {
    let num = Int(input[i])!
    if num < X {
        print(num, separator: "", terminator: " ")
    }
}
print()

