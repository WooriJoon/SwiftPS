//
//  11726.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/09.
//

/// 11726 2×n 타일링

let n = Int(readLine()!)!
var DP: [Int] = [0, 1, 2]

switch n {
case 1:
    print(1)
    
case 2:
    print(2)
    
default:
    for i in 3...n { DP.append((DP[i-1] + DP[i-2]) % 10007) }
    print(DP[n])
}

/// 링크: https://www.acmicpc.net/problem/11726
