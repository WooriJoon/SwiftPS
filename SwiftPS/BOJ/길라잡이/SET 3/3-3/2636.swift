//
//  2636.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/05.
//

/// 2636 치즈

// 상, 우, 하, 좌 순서로 탐색
let dx: [Int] = [-1, 0, 1, 0]
let dy: [Int] = [0, 1, 0, -1]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let row = input[0]
let col = input[1]

var board: [[Int]] = Array(repeating: Array(repeating: 0, count: col), count: row)
var meltedCheesesCount: [Int] = []

for i in 0..<row {
    let input = readLine()!.split(separator: " ").map { $0 }
    for j in 0..<col {
        if input[j] == "1" { board[i][j] = 1 }
    }
}

func BFS() -> Int {
    var queue: [(x: Int, y: Int)] = []
    var visited = Array(repeating: Array(repeating: false, count: col), count: row)
    var meltedCheeses: Int = 0
    
    queue.append((0, 0))
    visited[0][0] = true
    
    while !queue.isEmpty {
        let current = queue.removeFirst()
        let x = current.x
        let y = current.y
        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && nx < row && ny >= 0 && ny < col && !visited[nx][ny] {
                // 치즈 외부면 사방 모두 확인
                if board[nx][ny] == 0 {
                    queue.append((nx, ny))
                    visited[nx][ny] = true
                }
                
                // 가장자리 치즈까지만 탐색
                if board[nx][ny] == 1 {
                    board[nx][ny] = 0
                    visited[nx][ny] = true
                    meltedCheeses += 1
                }
            }
        }
    }
    
    meltedCheesesCount.append(meltedCheeses)
    return meltedCheeses
}

var cycle: Int = 0
// 더 이상 녹는 치즈가 없을 때까지
while BFS() != 0 { cycle += 1 }

print(cycle)
print(meltedCheesesCount[cycle-1])

/// 링크: https://www.acmicpc.net/problem/2636
