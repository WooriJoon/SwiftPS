//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
let givenArray = readLine()!.split(separator: " ").map() { Int($0)! }
let M = Int(readLine()!)!
let checkedArray = readLine()!.split(separator: " ").map() { Int($0)! }

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

let sortedGivenArray = givenArray.sorted()

for i in checkedArray.indices {
    print(binarySearch(array: sortedGivenArray, target: checkedArray[i]) ? 1 : 0)
}

