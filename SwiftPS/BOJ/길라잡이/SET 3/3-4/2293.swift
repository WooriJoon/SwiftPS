//
//  2293.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/14.
//

/// 2293 동전 1

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]
var coins: [Int] = []
var DP: [Int] = Array(repeating: 0, count: k+1)
for _ in 0..<n { coins.append(Int(readLine()!)!) }

// 첫번째 DP는 1 고정 -> i원을 사용하여 i원을 만드는 경우의 수는 1
DP[0] = 1
coins.sort()

for i in coins {
    // stride는 시작할때 인덱스 범위가 벗어나도 에러가 나지 않고 pass함
    for j in stride(from: i, to: k+1, by: 1) {
        DP[j] += DP[j-i] < 2147483648 ? DP[j-i] : 0
    }
}

print(DP[k])

/// 링크: https://www.acmicpc.net/problem/2293
