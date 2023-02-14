//
//  14003.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/13.
//

/// 14003 가장 긴 증가하는 부분 수열 5

let N = Int(readLine()!)!
var A: [Int] = [0] + readLine()!.split(separator: " ").map { Int($0)! }
var LIS: [Int] = []
var index = Array(repeating: 0, count: N+1)

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

for i in 1...N {
    if LIS.count == 0 || LIS.last! < A[i] {
        LIS.append(A[i])
        index[i] = LIS.count - 1
    } else {
        let lowerBound = lowerBound(array: LIS, target: A[i])
        LIS[lowerBound] = A[i]
        index[i] = lowerBound
    }
}

var answer: [Int] = []
var lisIndex = LIS.count - 1

for i in (0...N).reversed() {
    if index[i] == lisIndex {
        lisIndex -= 1
        answer.append(A[i])
    }
}

answer.reverse()
print(LIS.count)
for i in answer.indices { print(answer[i], terminator: " ") }
print()

/// 링크: https://www.acmicpc.net/problem/14003
