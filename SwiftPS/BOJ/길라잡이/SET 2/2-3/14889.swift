//
//  14889.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/12.
//

/// 14889 스타트와 링크

let N = Int(readLine()!)!
var S: [[Int]] = []

var startStats = 0
var linkStats = 0
var minValue: Int = 1000000
var visited: [Bool] = []

for _ in 0..<N {
    S.append(readLine()!.split(separator: " ").map() { Int($0)! })
    visited.append(false)
}

func DFS(depth: Int, start: Int) {
    if depth == N/2 {
        startStats = 0
        linkStats = 0
        
        for i in 0..<N {
            for j in 0..<N {
                if visited[i] && visited[j] { startStats += S[i][j] }
                if !visited[i] && !visited[j] { linkStats += S[i][j] }
            }
        }
        
        let difference = abs(startStats - linkStats)
        minValue = min(minValue, difference)
        return
    }

    for i in start..<N {
        guard !visited[i] else { continue }
        visited[i].toggle()
        DFS(depth: depth + 1, start: i)
        visited[i].toggle()
    }
}

DFS(depth: 0, start: 0)
print(minValue)

/// 링크: https://www.acmicpc.net/problem/14889
