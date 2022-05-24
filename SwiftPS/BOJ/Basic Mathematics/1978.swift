//
//  1978.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/22.
//

// 1978 소수 찾기
//import Foundation
//
//let N = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map() { Int($0)! }
//var count: Int = 0
//
//OUTER: for i in 0..<N {
//    if arr[i] == 1 { continue }
//    else {
//        for j in 2..<arr[i] {
//            if arr[i] % j == 0 { continue OUTER }
//        }
//        count += 1
//    }
//}
//print(count)

//import Foundation
//
//let input = readLine()!.split(separator: " ").map() { Int($0)! }
//let M = input[0]
//let N = input[1]
//var primeNumbers: [Int] = []
//
//OUTER: for i in M...N {
//    guard i != 1 else { continue }
//    for j in 2..<i {
//        if i % j == 0 { continue OUTER }
//    }
//    primeNumbers.append(i)
//}
//
//for i in 0..<primeNumbers.count {
//    print(primeNumbers[i])
//}
