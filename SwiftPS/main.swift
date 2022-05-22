//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

var N = Int(readLine()!)!
var result: [Int] = []

OUTER: while N >= 2 {
    for i in 2...N {
        if N % i == 0 {
            N /= i
            result.append(i)
            continue OUTER
        }
    }
}

for i in 0..<result.count {
    print(result[i])
}
