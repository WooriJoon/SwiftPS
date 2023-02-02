//
//  7576.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/03.
//

/// 7576 토마토

// 상, 우, 하, 좌 순서로 탐색
let dx: [Int] = [-1, 0, 1, 0]
let dy: [Int] = [0, 1, 0, -1]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0]
let N = input[1]

var box: [[Int]] = Array(repeating: Array(repeating: 0, count: M), count: N)
// (x, y)에 있는 토마토는 cycle만큼 지나야 익음
// .removeLast() 오래 걸려서 index 사용
var queue: [(x: Int, y: Int, cycle: Int)] = []
var index: Int = 0

for i in 0..<N {
    let input = readLine()!.split(separator: " ")
    for j in 0..<M {
        // 익은 토마토 자리를 queue에 추가하고 방문 처리
        if input[j] == "1" {
            box[i][j] = -1
            queue.append((i, j, 0))
        }
        else if input[j] == "-1" { box[i][j] = -1 }
    }
}

while queue.count > index {
    let current = queue[index]
    let x = current.x
    let y = current.y
    
    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]
        
        // 상자를 벗어나지 않고 비어있지 않은 칸이라면
        if nx >= 0 && nx < N && ny >= 0 && ny < M && box[nx][ny] != -1 {
            // 방문 처리후 queue에 추가(cycle은 현재 좌표의 cycle + 1)
            box[nx][ny] = -1
            queue.append((nx, ny, current.cycle + 1))
        }
    }
    index += 1
}

// 상자를 순회하며 하나라도 0이 있으면 불가능
var isPossible = true
for i in 0..<N {
    for j in 0..<M {
        if box[i][j] == 0 { isPossible = false }
    }
}

print(isPossible ? queue[index-1].cycle : -1)

/// 링크: https://www.acmicpc.net/problem/7576
