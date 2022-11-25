import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = 0
    
    for i in 1...count {
        answer = answer + Int64(price * i)
    }
    answer = answer - Int64(money)
    if answer < 0 {
        return 0
    }
    
    return answer
}

let price = 3
let money = 20
let count = 4
solution(price, money, count)
