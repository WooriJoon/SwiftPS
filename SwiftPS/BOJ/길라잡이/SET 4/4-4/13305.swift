//
//  13305.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/03/02.
//

/// 13305 주유소

let N = Int(readLine()!)!
let distances = readLine()!.split(separator: " ").map { Int($0)! }
let costs = readLine()!.split(separator: " ").map { Int($0)! }
var currentMinCost: Int = costs[0]
var minCost: Int = 0

minCost += currentMinCost * distances[0]

for i in 1..<distances.count {
    if costs[i] < currentMinCost { currentMinCost = costs[i] }
    minCost += currentMinCost * distances[i]
}

print(minCost)

/// 링크: https://www.acmicpc.net/problem/13305
