// 2022.02.18 Programmers > 코딩테스트 연습 > 정렬 > K번째 수 (Level 1)

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer = Array(repeating: 0, count: commands.count)
    
    for index in 0..<commands.count {
        let i = commands[index][0]-1 // 2
        let j = commands[index][1]-1 // 5
        let k = commands[index][2]-1 // 3
        
        // 배열 자르기
        var subArr = Array(repeating: 0, count: j-i+1) // [0,0,0,0]
        for idx in 0..<subArr.count {
            subArr[idx] = array[i+idx]
            // subArr[0] = array[1] = 5
            // subArr[1] = array[2] = 2
            // subArr[2] = array[3] = 6
            // subArr[3] = array[4] = 3
        }
        
        // 자른 배열 정렬하기
        for stand in 1..<subArr.count {
            for idx in stride(from: stand, to: 0, by: -1) {
                if subArr[idx] < subArr[idx-1] {
                    subArr.swapAt(idx, idx-1)
                } else {
                    break
                }
            }
        }
        
        // 자른 배열의 k번째 answer 배열에 담기
        answer[index] = subArr[k]
    }
    
    return answer
}


solution([1,5,2,6,3,7,4], [[2,5,3],[4,4,1],[1,7,3]])

