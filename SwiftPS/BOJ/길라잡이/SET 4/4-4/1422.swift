//
//  1422.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/03/02.
//

/// 1422 숫자의 신

let KN = readLine()!.split(separator: " ").map { Int($0)! }
let K = KN[0]
let N = KN[1]
var nums: [String] = []
for _ in 0..<K { nums.append(readLine()!) }

// 어떤 원소를 앞에 둘지 정렬
nums.sort { ($0 + $1) > ($1 + $0) }

let max = nums.map { Int($0)! }.max()! // 가장 큰 값을 최대한 많이 넣어야하기 때문에 따로 뺌
var isMaxUsed = false                  // max 값이 쓰였는지 체크
var answer: [String] = []

for i in 0..<K {
    // 가장 큰 값을 N-K+1(넣을 수 있는 최대)번 넣음
    if !isMaxUsed && Int(nums[i])! == max {
        isMaxUsed = true
        for _ in 0..<N-K+1 { answer.append(nums[i]) }
    }
    else { answer.append(nums[i]) }
}

print(answer.joined())

/// 링크: https://www.acmicpc.net/problem/1422
