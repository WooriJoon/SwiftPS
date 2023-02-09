//
//  1912.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/09.
//

/// 1912 연속합

let n = Int(readLine()!)!
var sequence: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
var DP: [Int] = [sequence[0]]

for i in 1..<n { DP.append(max(sequence[i], sequence[i] + DP[i-1])) }

print(DP.max()!)

/// 링크: https://www.acmicpc.net/problem/1912
