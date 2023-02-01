//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
var costs: [(R: Int, G: Int, B: Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    costs.append((input[0], input[1], input[2]))
}

for i in 1..<N {
    costs[i].R += min(costs[i-1].G, costs[i-1].B)
    costs[i].G += min(costs[i-1].R, costs[i-1].B)
    costs[i].B += min(costs[i-1].R, costs[i-1].G)
}

let answer = [costs[N-1].R, costs[N-1].G, costs[N-1].B]
print(answer.min()!)

