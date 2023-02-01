//
//  1932.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/27.
//

/// 1932 정수 삼각형

let n = Int(readLine()!)!
var triangle: [[Int]] = []

for _ in 0..<n { triangle.append(readLine()!.split(separator: " ").map { Int($0)! }) }

for i in 1..<n {
    for j in 0...i {
        switch j {
        case 0:
            triangle[i][j] += triangle[i-1][j]
            
        case i:
            triangle[i][j] += triangle[i-1][j-1]
            
        default:
            triangle[i][j] += max(triangle[i-1][j-1], triangle[i-1][j])
        }
    }
}

print(triangle[n-1].max()!)

/// 링크: https://www.acmicpc.net/problem/1932
