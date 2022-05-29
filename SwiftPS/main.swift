//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let input = readLine()!
var arr: [Int] = []

for ch in input { arr.append(Int(String(ch))!) }

arr = arr.sorted()
arr = arr.reversed()

for i in 0..<arr.count { print("\(arr[i])", terminator: "") }
print()
