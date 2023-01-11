//
//  1065.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

// 1065 한수
//import Foundation
//
//let N = Int(readLine()!)!
//
//func Hansoo(N: Int) -> Int {
//    if N < 100 { return N }
//    
//    var count: Int = 99
//    
//    for i in 100...N {
//        let a = i % 10
//        let b = i / 10 % 10
//        let c = i / 100
//        
//        if (a - b == b - c) { count += 1 }
//    }
//
//    return count
//}
//
//print(Hansoo(N: N))
