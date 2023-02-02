//
//  2583.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/02.
//

/// 2583 영역 구하기

// 상, 우, 하, 좌 탐색
let dx: [Int] = [-1, 0, 1, 0]
let dy: [Int] = [0, 1, 0, -1]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0]
let N = input[1]
let K = input[2]

// 인덱싱 편의를 위해 오른쪽으로 90도 회전
// 0: 방문 가능 / 1: 방문 불가능
var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)

// 직사각형에 해당하는 범위를 1로 채움
for _ in 0..<K {
    let square = readLine()!.split(separator: " ").map { Int($0)! }
    for i in square[0]..<square[2] {
        for j in square[1]..<square[3] {
            graph[i][j] = 1
        }
    }
}

func BFS(x: Int, y: Int) -> Int {
    var queue: [(x: Int, y: Int)] = []
    var count: Int = 1
    
    graph[x][y] = 1
    queue.append((x, y))
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        let x = current.x
        let y = current.y
        
        // 상, 우, 하, 좌 순서로 검사
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            guard isValid(nx, ny) else { continue }
            
            // 방문 처리하고 Queue에 추가
            graph[nx][ny] = 1
            queue.append((nx, ny))
            count += 1
        }
    }
    
    return count
}

// 다음칸이 갈 수 있는 칸인지 검사
func isValid(_ x: Int, _ y: Int) -> Bool {
    // 그래프를 벗어나지 않고 막히지 않은(0인) 곳
    return (x >= 0) && (x < N) && (y >= 0) && (y < M) && (graph[x][y] == 0)
}

var answer: [Int] = []

for i in 0..<N {
    for j in 0..<M {
        if graph[i][j] != 1 { answer.append(BFS(x: i, y: j)) }
    }
}

answer.sort()
print(answer.count)
print(answer.map { String($0) }.joined(separator: " "))

/// 링크: https://www.acmicpc.net/problem/2583
