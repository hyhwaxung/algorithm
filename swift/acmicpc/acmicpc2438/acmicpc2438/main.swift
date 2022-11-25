//
//  main.swift
//  acmicpc2438
//
//  Created by 정현화 on 2022/04/16.
//

import Foundation

let N = Int(readLine()!)!

for i in 1...N {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}
