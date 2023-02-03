//
//  7569.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/03.
//

/// 7569 토마토

let dx: [Int] = [-1, 0, 1, 0]
let dy: [Int] = [0, 1, 0, -1]

let input = readLine()!.split(separator: " ").map { Int($0)! }
let M = input[0]
let N = input[1]
let H = input[2]

var boxes: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: M), count: N), count: H)
var queue: [(height: Int, x: Int, y: Int, cycle: Int)] = []
var index: Int = 0

for height in 0..<H {
    for x in 0..<N {
        let input = readLine()!.split(separator: " ").map { $0 }
        for y in 0..<M {
            // 익은 토마토 자리를 queue에 추가하고 방문 처리
            if input[y] == "1" {
                boxes[height][x][y] = -1
                queue.append((height, x, y, 0))
            }
            else if input[y] == "-1" { boxes[height][x][y] = -1 }
        }
    }
}

while queue.count > index {
    let current = queue[index]
    let h = current.height
    let x = current.x
    let y = current.y

    for i in 0..<4 {
        let nx = x + dx[i]
        let ny = y + dy[i]

        if nx >= 0 && nx < N && ny >= 0 && ny < M && boxes[h][nx][ny] != -1 {
            boxes[h][nx][ny] = -1
            queue.append((h, nx, ny, current.cycle + 1))
        }
    }
    
    // 위
    if h < H-1 && H > 1 && boxes[h+1][x][y] != -1 {
        boxes[h+1][x][y] = -1
        queue.append((h+1, x, y, current.cycle + 1))
    }
    
    // 아래
    if h > 0 && H > 1 && boxes[h-1][x][y] != -1 {
        boxes[h-1][x][y] = -1
        queue.append((h-1, x, y, current.cycle + 1))
    }

    index += 1
}

var maxCycle: Int = 0
var isPossible = true

for i in queue.indices { maxCycle = max(maxCycle, queue[i].cycle) }
if boxes.flatMap({ $0 }).flatMap({ $0 }).contains(0) { isPossible = false }

print(isPossible ? maxCycle : -1)

/// 링크: https://www.acmicpc.net/problem/7569
