// 2022.02.18 Programmers > 코딩테스트 연습 > 해시 > 위장 (Level 2)

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var dic:Dictionary<String,Int> = [:]
    
    for idx in 0..<clothes.count {
        let type = clothes[idx][1]
        
        dic[type, default: 0] += 1
    }
    
    var answer = 1
    
    for val in dic.values {
        answer = answer * (val + 1)
    }
    
    return answer-1
}

solution([["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]])

solution([["crowmask", "face"], ["bluesunglasses", "face"], ["smoky_makeup", "face"]])
