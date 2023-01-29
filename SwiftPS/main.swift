//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
var minCost: [Int] = Array(repeating: 0, count: N+1)

guard N != 1 else {
    print(0)
    exit(0)
}

for i in 2...N {
    minCost[i] = minCost[i-1] + 1
    if i % 3 == 0 { minCost[i] = min(minCost[i], minCost[i/3] + 1) }
    if i % 2 == 0 { minCost[i] = min(minCost[i], minCost[i/2] + 1) }
}

print(minCost[N])

