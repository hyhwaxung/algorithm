import Foundation

func solution(_ stepCounts:[Int]) -> Int {
    var points = 0
    var counts = 0
    var day = 1
    for steps in stepCounts {
        if steps >= 10000 {
            points = points + 10000
            counts = counts + 1
            if counts == 1 || counts == 3 || counts == 5 {
                points = points + 10000
            }
        } else {
            points = points + steps
        }
        day = day + 1
        if day == 8 {
            day = 1
            counts = 0
        }
    }
    
    return points
}

let stepCounts = [10000, 0, 10000]
solution(stepCounts)
