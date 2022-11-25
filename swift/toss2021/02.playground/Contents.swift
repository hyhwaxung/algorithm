import Foundation

func solution(_ actions:[String]) -> [String] {
    var sum = 0
    var arr = [String](repeating: "", count: actions.count)
    var index = 0
    for act in actions {
        let line = act.split(separator: " ")
        
        switch line[1] {
        case "deposit":
            let str = "입금 " + line[2] + " " + line[3] + "원"
            sum = sum + Int(String(line[3]))!
            arr[index] = str
            break
        case "withdraw":
            let str = "출금 " + line[2] + " " + line[3] + "원"
            sum = sum - Int(String(line[3]))!
            arr[index] = str
            break
        case "change":
            let id = act[act.startIndex]
            for s in actions {
                let ids = s[s.startIndex]
                if id == ids {
                    
                }
            }
            break
        default:
            break
        }
        index = index + 1
    }
    arr[index] = String(sum) + "원"
    
    var answer = arr[0...index]
    print(answer)
    
    return answer
}

// ID 타입 명세 금액
let actions = [
    "1 deposit 타행입금 200000",
    "2 withdraw 바나나우유 1050",
    "3 withdraw 관리비 180000",
    "2 change 바나나 900"
]
solution(actions)
