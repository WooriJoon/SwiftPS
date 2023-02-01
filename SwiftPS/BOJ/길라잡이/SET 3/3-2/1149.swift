//
//  1149.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/27.
//

/// 1149 RGB거리

let N = Int(readLine()!)!
var costs: [(R: Int, G: Int, B: Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    costs.append((input[0], input[1], input[2]))
}

// 현재 칠하려는 색깔을 최소 비용으로 칠하려면
// => (이전에 칠한 색깔이 겹치지 않고) && (그 두 색깔 중 더 작은 값을 선택)
// i번째 줄의 집에 i-1번째에서 고른 최소 비용을 더해나감
for i in 1..<N {
    costs[i].R += min(costs[i-1].G, costs[i-1].B)
    costs[i].G += min(costs[i-1].R, costs[i-1].B)
    costs[i].B += min(costs[i-1].R, costs[i-1].G)
}

// N번째 줄의 정수 중 가장 작은 값 == 최소비용
let answer = [costs[N-1].R, costs[N-1].G, costs[N-1].B]
print(answer.min()!)

/// 링크: https://www.acmicpc.net/problem/1149
