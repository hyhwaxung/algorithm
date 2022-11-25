import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var max = 0
    var min = 0
    
    for x in lottos {
        if x == 0 {
            max += 1
            continue
        }
        for y in win_nums {
            if x == y {
                min += 1
            }
        }
    }
    max += min
    
    return [rank(max), rank(min)]
}

func rank(_ num:Int) -> Int {
    switch num {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    default:
        return 6
    }
}

let lottos = [45,4,35,20,3,9]
let win_lottos = [20,9,3,45,4,35]
solution(lottos, win_lottos)
