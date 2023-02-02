//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

/// 토마토
//let dr: [Int] = [-1, 0, 1, 0]
//let dc: [Int] = [0, 1, 0, -1]
//
//let input = readLine()!.split(separator: " ").map { Int($0)! }
//let M = input[0]
//let N = input[1]
//let H = input[2]
//
//var boxes: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count: M), count: N), count: H)
//
//for height in 0..<H {
//    for row in 0..<N {
//        let input = readLine()!.split(separator: " ").map { Int($0)! }
//        for col in 0..<M {
//            boxes[height][row][col] = input[col]
//        }
//    }
//}
//
//for i in 0..<H {
//    for j in 0..<N {
//        print(boxes[i][j])
//    }
//}
//
//func BFS(height: Int, row: Int, col: Int) -> Int {
//    var queue: [(height: Int, row: Int, col: Int, cycle: Int)] = []
//    var index: Int = 0
//
//    boxes[height][row][col] = -1
//    queue.append((height, row, col, 0))
//
//    while queue.count > index {
//        let current = queue[index]
//        let h = current.height
//        let r = current.row
//        let c = current.col
//
//        for i in 0..<4 {
//            let nr = r + dr[i]
//            let nc = c + dc[i]
//
//            if nr >= 0 && nr < N && nc >= 0 && nc < M && boxes[h][nr][nc] != -1 {
//                boxes[h][nr][nc] = -1
//                queue.append((h, nr, nc, current.cycle + 1))
//            }
//        }
//
//
//        index += 1
//    }
//
//    return queue[index-1].cycle
//}
//
//for height in 0..<H {
//    for row in 0..<N {
//        for col in 0..<M {
//            if boxes[height][row][col] == 1 {
//                print(BFS(height: height, row: row, col: col))
//            }
//        }
//    }
//}
/// 여기까지


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
