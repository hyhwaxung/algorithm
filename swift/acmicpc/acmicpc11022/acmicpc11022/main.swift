//
//  main.swift
//  acmicpc11022
//
//  Created by 정현화 on 2022/04/03.
//


import Foundation

let T = Int(readLine()!)!

for i in 1...T {
    let input = readLine()!.components(separatedBy: " ")
    let A = Int(input[0])!
    let B = Int(input[1])!
    
    print("Case #\(i): \(A) + \(B) = \(A+B)")
}

