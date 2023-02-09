//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let n = Int(readLine()!)!
var DP: [Int] = [0, 1, 2]

switch n {
case 1:
    print(1)
    
case 2:
    print(2)
    
default:
    for i in 3...n { DP.append((DP[i-1] + DP[i-2]) % 10007) }
    print(DP[n])
}

