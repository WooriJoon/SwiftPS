//
//  2667.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/23.
//

/// 2667 단지 번호붙이기

let N = Int(readLine()!)!

// 다음 길의 인덱스를 찾기위한 x, y의 변화량이며, 위부터 시계방향으로 탐색
let dx: [Int] = [0, 1, 0, -1]
let dy: [Int] = [-1, 0, 1, 0]

var map: [[Int]] = Array(repeating: Array(repeating: 0, count: N), count: N)
var answer: [Int] = []

for i in 0..<N { map[i] = readLine()!.map { Int(String($0))! } }

// 파라미터로 들어올 때의 좌표를 받고 해당 단지의 집 갯수 return
func BFS(x: Int, y: Int) -> Int {
    var queue: [(Int, Int)] = []
    var count: Int = 1
    
    // 얘 빼먹어서 안됐음 ㅎㅎ;
    map[x][y] = 0
    queue.append((x , y))
    
    while !queue.isEmpty {
        let currentCoordinate = queue.removeFirst()
        
        // 현재 위치의 x, y 좌표
        let currentX = currentCoordinate.0
        let currentY = currentCoordinate.1
        
        // 상, 우, 하, 좌 순서대로 탐색
        for i in 0..<4 {
            let nx = currentX + dx[i]
            let ny = currentY + dy[i]
            
            // 지도 밖으로 나가지 않고 && 갈 수 있는 곳
            // guard 문으로 돌릴때 느려져서 if 사용함
            if (nx >= 0) && (nx < N) && (ny >= 0) && (ny < N) && (map[nx][ny] == 1) {
                // 현재 위치를 0으로 만들어 이미 체크한 단지는 BFS를 실행하지 않음
                map[nx][ny] = 0
                queue.append((nx, ny))
                count += 1
            }
        }
    }
    return count
}

for i in 0..<N {
    for j in 0..<N {
        if map[i][j] == 1 { answer.append(BFS(x: i, y: j)) }
    }
}

answer.sort()
print(answer.count)
for i in answer.indices { print(answer[i]) }

/// 링크: https://www.acmicpc.net/problem/2667
