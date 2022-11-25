//
//  main.swift
//  acmicpc10950
//
//  Created by 정현화 on 2022/03/20.
//  Copyright © 2022 com.hyhwa. All rights reserved.
//

// 2022.03.20 acmicpc 10950 : A+B - 3

import Foundation

var input = readLine()!.components(separatedBy: " ")

let n = Int(input[0])!

for i in 0..<n {
    input = readLine()!.components(separatedBy: " ")
    let a = Int(input[0])!
    let b = Int(input[1])!
    
    print(a+b)
}

