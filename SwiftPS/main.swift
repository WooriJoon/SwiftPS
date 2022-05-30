//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
var arr: [(Int, Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map() { Int($0)! }
    arr.append((input[0], input[1]))
}

arr.sort { (x, y) in
    if x.0 == y.0 { return x.1 < y.1 }
    return x.0 < y.0
}

for i in 0..<N {
    print("\(arr[i].0) \(arr[i].1)")
}
