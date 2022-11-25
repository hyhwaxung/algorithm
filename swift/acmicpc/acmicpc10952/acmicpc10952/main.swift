//
//  main.swift
//  acmicpc10952
//
//  Created by 정현화 on 2022/04/29.
//

import Foundation

var A = 0
var B = 0

while true {
    let input = readLine()!.components(separatedBy: " ")
    A = Int(input[0])!
    B = Int(input[1])!
    
    if (A == 0 && B == 0){
        break
    }
    print(A+B)
}
