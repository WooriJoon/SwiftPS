//
//  2206.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/07.
//

/// 2206 벽 부수고 이동하기

let dx: [Int] = [-1, 0, 1, 0]
let dy: [Int] = [0, 1, 0, -1]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var map = Array(repeating: Array(repeating: 0, count: M), count: N)
// visited[n][n][0]: 벽을 부수지 않고 방문한 좌표 배열 / visited[n][n][1]: 벽을 부수고 방문한 좌표 배열
var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 2), count: M), count: N)
// [(x: x좌표, y: y좌표: distance: x,y까지의 최소 거리, isBreaked: x,y 좌표에 벽을 부수고 도착했는가? (0: 안부숨 / 1: 부숨))]
var queue: [(x: Int, y: Int, distance: Int, isBreaked: Int)] = []
var index: Int = 0
var answer: Int = -1

for i in 0..<N {
    let input = readLine()!.map { Int(String($0))! }
    for j in 0..<M {
        if input[j] == 1 { map[i][j] = 1 }
    }
}

queue.append((0, 0, 1, 0))
visited[0][0][0] = true

while queue.count > index {
    let current = queue[index]
    let x = current.x
    let y = current.y
    let distance = current.distance
    let isBreaked = current.isBreaked
    
    // 마지막 좌표에 도착하면 종료
    if x == N-1 && y == M-1 {
        answer = current.distance
        break
    }

    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]

        if nx >= 0 && nx < N && ny >= 0 && ny < M && !visited[nx][ny][isBreaked] {
            // 다음 칸이 벽 && 지금까지 벽 안부숨
            if map[nx][ny] == 1 && isBreaked == 0 {
                queue.append((nx, ny, distance + 1, 1))
                visited[nx][ny][1] = true
            }

            // 다음 칸이 벽 아님
            if map[nx][ny] == 0 {
                queue.append((nx, ny, distance + 1, isBreaked))
                visited[nx][ny][isBreaked] = true
            }
        }
    }
    
    index += 1
}

print(answer)

/// 링크: https://www.acmicpc.net/problem/2206
