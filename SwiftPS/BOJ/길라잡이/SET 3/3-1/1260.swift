//
//  1260.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/22.
//

/// 1260 DFS와 BFS
let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let V = input[2]
var matrix: [[Bool]] = Array(repeating: Array(repeating: false, count: N+1), count: N+1)
var visited: [Bool] = Array(repeating: false, count: N+1)

// 2차원 배열 인접 행렬로 그래프 그림
for _ in 0..<M {
    let node = readLine()!.split(separator: " ").map { Int($0)! }
    matrix[node[0]][node[1]] = true
    matrix[node[1]][node[0]] = true
}

// Queue와 Stack을 이용해 removeLast()로 풀려 했으나 노드의 번호가 작은 것부터 탐색해야해서 recursive하게 풀이함
func DFS(_ currentNode: Int) {
    visited[currentNode] = true
    print(currentNode, terminator: " ")
    
    for i in 1..<N+1 {
        if !visited[i] && matrix[currentNode][i] { DFS(i) }
    }
}

func BFS(_ currentNode: Int) {
    var visitedQueue: [Int] = []
    var needVisitQueue: [Int] = []
    
    needVisitQueue.append(currentNode)
    
    while !needVisitQueue.isEmpty {
        let node = needVisitQueue.removeFirst()
        if visitedQueue.contains(node) { continue }
        
        visitedQueue.append(node)
        
        for i in 1..<N+1 {
            if matrix[node][i] { needVisitQueue.append(i) }
        }
    }
    
    for i in visitedQueue.indices { print(visitedQueue[i], terminator: " ") }
}

DFS(V)
print()
BFS(V)
print()

/// https://www.acmicpc.net/problem/1260
