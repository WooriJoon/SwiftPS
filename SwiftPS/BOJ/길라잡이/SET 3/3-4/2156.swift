//
//  2156.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/11.
//

/// 2156 포도주 시식

let n = Int(readLine()!)!
var wines: [Int] = []
var maxAmounts: [Int] = Array(repeating: -1, count: n+1)

for _ in 0..<n { wines.append(Int(readLine()!)!) }

switch n {
case 1:
    print(wines[0])
    
case 2:
    print(wines[0] + wines[1])
    
default:
    maxAmounts[0] = wines[0]
    maxAmounts[1] = wines[0] + wines[1]
    maxAmounts[2] = max(wines[1] + wines[0], wines[2] + wines[0], wines[2] + wines[1])

    for i in 3..<n {
        maxAmounts[i] = max(maxAmounts[i-1],
                            wines[i] + maxAmounts[i-2],
                            wines[i] + wines[i-1] + maxAmounts[i-3])
    }

    print(maxAmounts.max()!)
}

/// 링크: https://www.acmicpc.net/problem/2156
