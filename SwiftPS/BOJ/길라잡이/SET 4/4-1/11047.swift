//
//  11047.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/16.
//

/// 11047 동전 0

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
var K = input[1]
var coins: [Int] = []
var count: Int = 0
for _ in 0..<N { coins.append(Int(readLine()!)!) }

// 가장 큰 값의 동전부터
for coin in coins.reversed() {
    // 현재 금액을 현재 동전의 값으로 나눈 값 == 현재 동전을 사용할 수 있는 최대 횟수
    let remain = K / coin
    count += remain
    K -= coin * remain
}

print(count)

/// 링크: https://www.acmicpc.net/problem/11047
