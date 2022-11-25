//
//  main.swift
//  acmicpc2439
//
//  Created by 정현화 on 2022/04/17.
//

import Foundation

let N = Int(readLine()!)!

for i in 1...N {
    if i != N {
        for _ in 1...N-i {
            print(" ", terminator: "")
        }
    }
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}

