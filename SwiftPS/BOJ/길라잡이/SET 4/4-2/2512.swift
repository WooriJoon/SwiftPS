//
//  2512.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/19.
//

/// 2512 예산

let N = Int(readLine()!)!
let requests: [Int] = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
let budget = Int(readLine()!)!
var sum = requests.reduce(0) { $0 + $1 }
var maxValue: Int = 0

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

// 모든 요청 배정
if sum <= budget {
    print(requests.last!)
// 그 외
} else {
    var min = 1
    var max = requests.last!
    var mid = (min + max) / 2

    while min <= max {
        sum = 0
        mid = (min + max) / 2
        let lowerBound = lowerBound(array: requests, target: mid)

        sum += mid * (requests.count - lowerBound)
        for i in 0..<lowerBound { sum += requests[i] }
        
        if sum > budget {
            max = mid - 1
        } else {
            min = mid + 1
            maxValue = mid
        }
    }
    
    print(maxValue)
}

/// 링크: https://www.acmicpc.net/problem/2512
