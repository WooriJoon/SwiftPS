//
//  11651.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/07.
//

/// 11651 좌표 정렬하기 2

let N = Int(readLine()!)!
var coordinates: [(Int, Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    coordinates.append((Int(input[0])!, Int(input[1])!))
}

let answer = coordinates.sorted() { $0.1 != $1.1 ? $0.1 < $1.1 : $0.0 < $1.0 }

for i in 0..<N { print(answer[i].0, answer[i].1) }

/// 링크: https://www.acmicpc.net/problem/11651
