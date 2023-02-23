//
//  2110.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/20.
//

/// 2110 공유기 설치

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let C = input[1]
var x: [Int] = []
for _ in 0..<N { x.append(Int(readLine()!)!) }
x.sort()

// mid: 공유기가 들어갈 수 있는 집 사이 간격
var min = 1
var max = x.last! - x.first!
var mid = (min + max) / 2
var count = 0
var maxDistance = 0

while min <= max {
    count = 1
    mid = (min + max) / 2
    var current = x.first!

    for i in 1..<N {
        if x[i] - current >= mid {
            count += 1
            current = x[i]
        }
    }
    
    if count < C {
        max = mid - 1
    } else {
        min = mid + 1
        maxDistance = mid
    }
}

print(maxDistance)

/// 링크: https://www.acmicpc.net/problem/2110
