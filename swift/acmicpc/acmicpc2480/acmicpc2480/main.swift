//
//  main.swift
//  acmicpc2480
//
//  Created by 정현화 on 2022/03/11.
//  Copyright © 2022 com.hyhwa. All rights reserved.
//

// 2022.03.16 acmicpc 2480 - 주사위 세 개

import Foundation

let input = readLine()!.components(separatedBy: " ")

var dice:[Int:Int] = [:]
for s in input {
    let n = Int(s)!
    dice[n] = (dice[n] ?? 0) + 1
}

let sortedDice = dice.sorted { if $0.1 == $1.1 { return $0.0 > $1.0 }
                                return $0.1 > $1.1 }

var result:Int = 0
if sortedDice.count == 1 {
    // 모두 같은 눈
    result = 10000 + (sortedDice[0].key)*1000
} else if sortedDice.count == 2 {
    result = 1000 + (sortedDice[0].key)*100
} else {
    result = (sortedDice[0].key)*100
}

print(result)
