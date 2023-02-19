//
//  2217.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/16.
//

/// 2217 로프

let N = Int(readLine()!)!
var ropes: [Int] = []
var max: Int = -1
var count: Int = 1
for _ in 0..<N { ropes.append(Int(readLine()!)!) }

// 역순으로 정리
ropes.sort(by: >)

for rope in ropes {
    // 현재 최대 중량
    let current = rope * count
    if current > max { max = current }
    count += 1
}

print(max)

/// 링크: https://www.acmicpc.net/problem/2217
