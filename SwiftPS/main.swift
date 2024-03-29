//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let KN = readLine()!.split(separator: " ").map { Int($0)! }
let K = KN[0]
let N = KN[1]
var nums: [String] = []
for _ in 0..<K { nums.append(readLine()!) }

nums.sort { ($0 + $1) > ($1 + $0) }

let max = nums.map { Int($0)! }.max()!
var isMaxUsed = false
var answer: [String] = []

for i in 0..<K {
    if !isMaxUsed && Int(nums[i])! == max {
        isMaxUsed = true
        for _ in 0..<N-K+1 { answer.append(nums[i]) }
    }
    else { answer.append(nums[i]) }
}

print(answer.joined())
