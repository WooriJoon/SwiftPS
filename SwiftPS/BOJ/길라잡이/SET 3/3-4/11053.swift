//
//  11053.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/12.
//

/// 11053 가장 긴 증가하는 부분 수열

/// O(NlogN)
//let N = Int(readLine()!)!
//var A: [Int] = [0] + readLine()!.split(separator: " ").map { Int($0)! }
//var DP: [Int] = [A[1]]
//
//func lowerBound(array: [Int], target: Int) -> Int {
//    var min = 0
//    var max = array.count - 1
//
//    while min < max {
//        let mid = (min + max) / 2
//
//        if array[mid] < target {
//            min = mid + 1
//        } else {
//            max = mid
//        }
//    }
//
//    return max
//}
//
//switch N {
//case 1:
//    print(1)
//
//default:
//    for i in 2...N {
//        // 현재 값이 DP의 마지막보다 크면 추가
//        if A[i] > DP.last! {
//            DP.append(A[i])
//        // 아니면 lowerBound의 값과 변경
//        } else {
//            let lowerBound = lowerBound(array: DP, target: A[i])
//            DP[lowerBound] = A[i]
//        }
//    }
//
//    print(DP.count)
//}

/// O(N^2)
let N = Int(readLine()!)!
var A: [Int] = [0] + readLine()!.split(separator: " ").map { Int($0)! }
var DP: [Int] = [0, 1]

switch N {
case 1:
    print(1)

default:
    for i in 2...N {
        var maxLength: Int = 0

        for j in 1..<i {
            if A[j] < A[i] {
                if DP[j] > maxLength { maxLength = DP[j] }
            }
        }

        DP.append(maxLength + 1)
    }

    print(DP.max()!)
}

/// 링크: https://www.acmicpc.net/problem/11053
