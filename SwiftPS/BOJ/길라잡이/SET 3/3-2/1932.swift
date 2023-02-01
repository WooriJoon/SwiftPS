//
//  1932.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/27.
//

/// 1932 정수 삼각형

let n = Int(readLine()!)!
// 1 ~ n번째 줄까지 [Int] 타입으로 정수 입력
var triangle: [[Int]] = []

for _ in 0..<n { triangle.append(readLine()!.split(separator: " ").map { Int($0)! }) }

// i번째 줄의 정수를 i-1번째 줄의 정수와의 합으로 덮어 씌우면서 현재의 최대합을 적어나감
for i in 1..<n {
    for j in 0...i {
        switch j {
        // 맨 왼쪽
        case 0:
            triangle[i][j] += triangle[i-1][j]
            
        // 맨 오른쪽
        case i:
            triangle[i][j] += triangle[i-1][j-1]
            
        // 그 외
        default:
            triangle[i][j] += max(triangle[i-1][j-1], triangle[i-1][j])
        }
    }
}

// n번째 줄의 정수 중 가장 큰 값 == 최대합
print(triangle[n-1].max()!)

/// 링크: https://www.acmicpc.net/problem/1932
