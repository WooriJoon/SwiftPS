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

DP[0] = 1
coins.sort()

for i in coins {
    for j in stride(from: i, to: k+1, by: 1) {
        DP[j] += DP[j-i] < 2147483648 ? DP[j-i] : 0
    }
}

print(DP[k])

/// 링크: https://www.acmicpc.net/problem/2293
