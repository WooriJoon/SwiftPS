//
//  11727.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/09.
//

/// 11727 2×n 타일링 2

let n = Int(readLine()!)!
var DP: [Int] = [0, 1, 3]

switch n {
case 1:
    print(1)
    
case 2:
    print(3)
    
default:
    for i in 3...n { DP.append((DP[i-1] + DP[i-2] * 2) % 10007) }
    print(DP[n])
}

/// 링크: https://www.acmicpc.net/problem/11727
