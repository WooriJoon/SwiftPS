//
//  11052.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/12.
//

/// 11052 카드 구매하기

let N = Int(readLine()!)!
var P = [0] + readLine()!.split(separator: " ").map { Int($0)! }
var DP: [Int] = Array(repeating: 0, count: N+1)

DP[1] = P[1]

for i in 2...N {
    var max: Int = -1
    
    for j in 1...i {
        let current = DP[i-j] + P[j]
        if max < current { max = current }
    }
    
    DP[i] = max
}

print(DP[N])

/// 그리디 안됨~
//var N = Int(readLine()!)!
//let P = readLine()!.split(separator: " ").map { Int($0)! }
//var piecePrice: [(per: Float, numberOfCards: Int)] = []
//var maxAmount: Int = 0
//
//for i in 1...N { piecePrice.append((Float(P[i-1]) / Float(i), i)) }
//
//while N > 0 {
//    let optionalMax = piecePrice.max { $0.per < $1.per }
//    let max = optionalMax!
//
//    if max.numberOfCards > N {
//        piecePrice.remove(at: (piecePrice.firstIndex { $0.numberOfCards == max.numberOfCards })!)
//        continue
//    } else {
//        N -= max.numberOfCards
//        maxAmount += P[max.numberOfCards - 1]
//    }
//}
//
//print(maxAmount)

/// 링크: https://www.acmicpc.net/problem/11052
