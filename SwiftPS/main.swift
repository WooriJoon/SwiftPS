//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

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



//for height in 0..<H {
//    for x in 0..<N {
//        for y in 0..<M {
//            if boxes[height][x][y] == 0 { isPossible = false }
//        }
//    }
//}

print(isPossible ? maxCycle : -1)

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let row = input[0]
//let col = input[1]
//var graph: [[Int]] = Array(repeating: Array(repeating: 0, count: col), count: row)
//
//for i in 0..<row {
//    let input = readLine()!.split(separator: " ").map { Int($0)! }
//    for j in 0..<col {
//        graph[i][j] = input[j]
//    }
//}
//
//for i in 0..<row {
//    print(graph[i])
//}

//let dx: [Int] = [-1, 0, 1, 0]
//let dy: [Int] = [0, 1, 0, -1]
//
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let N = input[0]
//let M = input[1]
//
//var map: [[Bool]] = Array(repeating: Array(repeating: true, count: M+1), count: N+1)
//var distance: [[Int]] = Array(repeating: Array(repeating: 0, count: M+1), count: N+1)
//var isImpossible = false
//var index: Int = 0
//
//distance[1][1] = 1
//
//for i in 1...N {
//    let input = readLine()!.map( { $0 })
//    for j in 1...M {
//        if input[j-1] == "1" { map[i][j] = false }
//    }
//}
//
//func BFS() {
//    var queue: [(x: Int, y: Int, isBreaked: Bool)] = []
//
//    map[1][1] = false
//    queue.append((1, 1, false))
//
//    while queue.count > index {
//        let current = queue[index]
//        let x = current.x
//        let y = current.y
//
//        for i in 0..<4 {
//            let nx = current.x + dx[i]
//            let ny = current.y + dy[i]
//
//            if (nx > 0) && (nx <= N) && (ny > 0) && (ny <= M) {
//                if !map[nx][ny] && !current.isBreaked {
//                    distance[nx][ny] = distance[x][y] + 1
//                    queue.append((nx, ny, true))
//
//                } else if map[nx][ny] && !current.isBreaked {
//                    distance[nx][ny] = distance[x][y] + 1
//                    map[nx][ny] = false
//                    queue.append((nx, ny, false))
//                }
//            }
//        }
//        index += 1
//        print(queue[index-1])
//    }
//}
//
//BFS()
//print(distance[N][M] != 0 ? distance[N][M] : -1)
//
////for i in 0...N { print(map[i]) }
