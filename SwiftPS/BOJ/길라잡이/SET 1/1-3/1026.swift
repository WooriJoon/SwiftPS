//
//  1026.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/01.
//

/// 1026 보물

let N = Int(readLine()!)!
let A = readLine()!.split(separator: " ").map() { Int($0)! }.sorted()
let B = readLine()!.split(separator: " ").map() { Int($0)! }.sorted(by: >)
var S: Int = 0

for i in A.indices { S += A[i] * B[i] }

print(S)

/// 링크: https://www.acmicpc.net/problem/1026
