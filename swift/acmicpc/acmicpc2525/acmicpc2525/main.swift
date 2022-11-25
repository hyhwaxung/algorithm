//
//  main.swift
//  acmicpc2525
//
//  Created by 정현화 on 2022/03/07.
//  Copyright © 2022 com.hyhwa. All rights reserved.
//

// 2022.03.07 acmicpc 2525 - 오븐 시계

import Foundation

let input1 = readLine()!.components(separatedBy: " ")
let hour = Int(input1[0])!
let minute = Int(input1[1])!

let input2 = readLine()!
let time = Int(input2)!

var nextMinute = minute + time
var nextHour = (nextMinute/60) + hour

if nextHour > 23 {
    nextHour = nextHour % 24
}

print("\(nextHour) \(nextMinute%60)")
