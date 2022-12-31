//
//  10815.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/12/30.
//

/// 10815 숫자 카드

let N = Int(readLine()!)!
let havingCards = readLine()!.split(separator: " ").map() { Int($0)! }.sorted()
let M = Int(readLine()!)!
let compareCards = readLine()!.split(separator: " ").map() { Int($0)! }

func binarySearch(array: [Int], target: Int) -> Bool {
    var min = 0
    var max = array.count - 1

    while (min <= max) {
        let mid = (min + max) / 2

        if array[mid] == target {
            return true
        } else if array[mid] > target {
            max = mid - 1
        } else {
            min = mid + 1
        }
    }

    return false
}

for i in compareCards.indices {
    print(binarySearch(array: havingCards, target: compareCards[i]) ? 1 : 0, terminator: " ")
}

print()

/// 링크: https://www.acmicpc.net/problem/10815
