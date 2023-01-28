//
//  2579.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/27.
//

/// 2579 계단 오르기

let countOfStairs = Int(readLine()!)!
var scores: [Int] = [0]

for _ in 0..<countOfStairs { scores.append(Int(readLine()!)!) }

func climb(_ n: Int) -> Int {
    guard n != 1 else { return scores[1] }
    guard n != 2 else { return scores[1] + scores[2] }

    var maxValues = [0, scores[1], scores[1] + scores[2]]
    
    for i in 3..<n+1 {
        // max(1칸을 올라 현재 칸에 오는 경우의 최대 비용, 2칸을 올라 현재 칸에 오는 최대 비용)
        let num = max(scores[i] + scores[i-1] + maxValues[i-3], scores[i] + maxValues[i-2])
        maxValues.append(num)
    }
    
    return maxValues[n]
}

print(climb(countOfStairs))

/// 링크: https://www.acmicpc.net/problem/2579
