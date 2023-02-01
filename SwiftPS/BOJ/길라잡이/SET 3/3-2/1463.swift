//
//  1463.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/27.
//

/// 1463 1로 만들기

let N = Int(readLine()!)!
var minCost: [Int] = Array(repeating: 0, count: N+1)

// 예외처리
guard N != 1 else {
    print(0)
    exit(0)
}

for i in 2...N {
    minCost[i] = minCost[i-1] + 1
    if i % 3 == 0 { minCost[i] = min(minCost[i], minCost[i/3] + 1) }
    if i % 2 == 0 { minCost[i] = min(minCost[i], minCost[i/2] + 1) }
}

print(minCost[N])

/// 링크: https://www.acmicpc.net/problem/1463
