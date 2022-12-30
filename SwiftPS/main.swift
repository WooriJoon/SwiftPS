//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

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
