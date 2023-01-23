//
//  2178.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/23.
//

/// 2178 미로 탐색

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

// 위부터 시계방향
let dx: [Int] = [0, 1, 0, -1]
let dy: [Int] = [-1, 0, 1, 0]

var maze: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)
var visited: [[Bool]]  = Array(repeating: Array(repeating: false, count: M), count: N)
var distance: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)

visited[0][0] = true
distance[0][0] = 1

for i in 0..<N { maze[i] = readLine()!.map { Int(String($0))! } }

// BFS
var queue: [(Int, Int)] = []

// 출발 지점
queue.append((0, 0))

while !queue.isEmpty {
    let currentCoordinate = queue.removeFirst()
    
    let x = currentCoordinate.0
    let y = currentCoordinate.1
    
    // 상, 우, 하, 좌 순서대로 탐색
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        // 미로 밖으로 나가지 않고 && 방문 안한 곳 && 갈 수 있는 곳
        if (nx >= 0) && (nx < N) && (ny >= 0) && (ny < M) && !visited[nx][ny] && (maze[nx][ny] == 1) {
            distance[nx][ny] = distance[x][y] + 1
            visited[nx][ny] = true
            queue.append((nx, ny))
        }
    }
}

print(distance[N-1][M-1])

/// 링크: https://www.acmicpc.net/problem/2178
