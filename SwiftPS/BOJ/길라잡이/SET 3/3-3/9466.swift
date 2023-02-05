//
//  9466.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/06.
//

/// 9466 텀 프로젝트

let testCase = Int(readLine()!)!

var visited: [Int] = []
var finished: [Bool] = []
var selected: [Int] = []
var order: Int = 0
var cycle: Int = 0

func DFS(_ node: Int) {
    order += 1
    visited[node] = order
    let next = selected[node-1]
    
    if visited[next] == 0 { DFS(next) }
    // 이미 간 곳인데 또 갈라고 하면 cycle 발생
    if !finished[next] { cycle += visited[node] - visited[next] + 1 }
    
    finished[node] = true
}

for _ in 0..<testCase {
    let n = Int(readLine()!)!
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    selected = input
    
    for _ in 0...selected.count { visited.append(0) }
    for _ in 0...selected.count { finished.append(false) }
    
    for i in 1...selected.count {
        if visited[i] == 0 { DFS(i) }
    }
    
    print(n - cycle)
    
    visited.removeAll()
    finished.removeAll()
    order = 0
    cycle = 0
}

/// 링크: https://www.acmicpc.net/problem/9466
