//
//  2606.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/23.
//

/// 2606 바이러스

let V = Int(readLine()!)!
let E = Int(readLine()!)!
var matrix: [[Bool]] = Array(repeating: Array(repeating: false, count: V+1), count: V+1)
var visited: [Bool] = Array(repeating: false, count: V+1)
var count: Int = 0

for _ in 0..<E {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    matrix[input[0]][input[1]] = true
    matrix[input[1]][input[0]] = true
}

func DFS(_ currentNode: Int) {
    visited[currentNode] = true
    count += 1
    
    for i in 1..<V+1 {
        if !visited[i] && matrix[currentNode][i] { DFS(i) }
    }
}

DFS(1)
print(count-1)

/// 링크: https://www.acmicpc.net/problem/2606
