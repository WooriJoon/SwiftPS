//
//  9466.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/06.
//

/// 9466 텀 프로젝트

let testCase = Int(readLine()!)!

var visited: [Int] = []   // 방문한 노드에 방문 순서를 저장
var finished: [Bool] = [] // N번째 노드가 호출한 함수가 종료되었는지를 저장
var selected: [Int] = []  // 프로젝트를 함께하고 싶은 학생 선택 결과
var order: Int = 0        // 노드 방문 순서
var cycle: Int = 0        // 사이클을 이루고 있는 학생의 수

func DFS(_ node: Int) {
    order += 1
    visited[node] = order
    let next = selected[node-1]
    
    if visited[next] == 0 { DFS(next) }
    // 이미 방문한 곳인데 또 방문하면 cycle 발생
    // 사이클을 이루는 노드의수: 현재 노드의 방문 순서 - 다음 방문할 노드의 방문 순서(사이클을 이루는 첫번째 노드) + 1
    if !finished[next] { cycle += visited[node] - visited[next] + 1 }
    
    finished[node] = true
}

for _ in 0..<testCase {
    let n = Int(readLine()!)!
    selected = readLine()!.split(separator: " ").map { Int($0)! }
    
    // 인덱싱 편의를 위해 selected.count+1의 크기만큼 배열 지정
    for _ in 0...selected.count { visited.append(0) }
    for _ in 0...selected.count { finished.append(false) }
    
    for i in 1...selected.count {
        if visited[i] == 0 { DFS(i) }
    }
    
    print(n - cycle)
    
    visited.removeAll()
    finished.removeAll()
    order = 0
    cycle = 0
}

/// 링크: https://www.acmicpc.net/problem/9466
