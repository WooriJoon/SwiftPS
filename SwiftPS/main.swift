//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let K = Int(readLine()!)!
var arr: [Int] = []

for _ in 0..<K {
    let input = Int(readLine()!)!
    
    if input == 0 { arr.removeLast() }
    else { arr.append(input) }
}

var sum: Int = 0
for i in 0..<arr.count { sum += arr[i] }

print(sum)
