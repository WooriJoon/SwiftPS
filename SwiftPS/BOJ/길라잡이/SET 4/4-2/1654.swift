//
//  1654.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/20.
//

/// 1654 랜선 자르기

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
let K = input[0]
let N = input[1]
var LAN: [Int] = []
for _ in 0..<K { LAN.append(Int(readLine()!)!) }
LAN.sort()

var min = 1
var max = LAN.last!
var mid = (min + max) / 2
var count = 0
var maxLength = 0

while min <= max {
    count = 0
    mid = (min + max) / 2
    let lowerBound = lowerBound(array: LAN, target: mid)
    
    for i in lowerBound..<LAN.count { count += LAN[i] / mid }
    
    if count < N {
        max = mid - 1
    } else {
        min = mid + 1
        maxLength = mid
    }
}

print(maxLength)

/// 링크: https://www.acmicpc.net/problem/1654
