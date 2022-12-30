//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<N {
    let num = Int(readLine()!)!
    arr.append(num)
}

func quickSort(_ arr: [Int]) -> [Int] {
    guard arr.count > 1 else { return arr }
    
    let pivot = arr[0]
    let leftArray = arr.filter { $0 < pivot }
    let rightArray = arr.filter { $0 > pivot }
    return quickSort(leftArray) + [pivot] + quickSort(rightArray)
}

let sortedArr = quickSort(arr)

for i in 0..<sortedArr.count {
    print(sortedArr[i])
}
