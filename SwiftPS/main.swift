//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

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
