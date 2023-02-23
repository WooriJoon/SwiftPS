//
//  2805.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/19.
//

/// 2805 나무 자르기

func lowerBound(array: [Int], target: Int) -> Int {
    var min = 0
    var max = array.count - 1

    while min < max {
        let mid = (min + max) / 2

        if array[mid] < target {
            min = mid + 1
        } else {
            max = mid
        }
    }

    return max
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
let trees = readLine()!.split(separator: " ").map { Int($0)! }.sorted()

var min = 0
var max = trees.last!
var mid = (min + max) / 2
var sum = 0
var maxValue = 0

while min <= max {
    sum = 0
    // 절단기 높이
    mid = (min + max) / 2
    let lowerBound = lowerBound(array: trees, target: mid)

    for i in lowerBound..<N { sum += trees[i] - mid }
    
    // 절단기 높이 낮춰야 벌목하는 양이 늘어남
    if sum < M {
        max = mid - 1
    } else {
        min = mid + 1
        maxValue = mid
    }
}

print(maxValue)

/// 링크: https://www.acmicpc.net/problem/2805
