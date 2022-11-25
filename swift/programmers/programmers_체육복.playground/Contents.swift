import Foundation

/* n : 전체 학생의 수 2 <= n <= 30
   lost : 체육복 도난 당한 학생 수 1 <= lost <= n, 중복 X
   reserve : 여벌 체육복 학생 수 1 <= reverse <= n, 중복 X
 
 5, [2, 4], [1,3,5] -> 5
 5, [2, 4], [3] -> 4
 3, [3], [1] -> 2
 
 바로 앞번호의 학생이나 바로 뒷번호 학생에게만 빌려줄 수 있음
 체육 수업을 들을 수 있는 학생의 최댓값을 return
 */
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var lostSet = Set(lost).subtracting(reserve)
    let reserveSet = Set(reserve).subtracting(lost)
    
    for reserve in reserveSet {
        if lostSet.contains(reserve - 1) {
            lostSet.remove(reserve - 1)
            continue
        }
        if lostSet.contains(reserve + 1) {
            lostSet.remove(reserve + 1)
        }
    }
    
    return (n - lostSet.count)
}

print(solution(5, [1,2,3], [2,3,4]))
