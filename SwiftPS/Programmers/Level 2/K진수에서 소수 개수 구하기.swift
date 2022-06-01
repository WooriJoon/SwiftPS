//
//  K진수에서 소수 개수 구하기.swift
//  SwiftPS
//
//  Created by Chicken on 2022/06/01.
//

// K진수에서 소수 개수 구하기
//import Foundation
//
//func isPrimeNumber(_ n: Int) -> Bool {
//    if n == 1 { return false }
//    if n == 2 || n == 3 { return true }
//
//    let root = Int(sqrt(Double(n)))
//    for i in 2...root { if n % i == 0 { return false } }
//
//    return true
//}
//
//func solution(_ n:Int, _ k:Int) -> Int {
//    let tempNum: String = String(n, radix: k)
//    var convertNum: [String.SubSequence] = []
//    var result: Int = 0
//
//    convertNum = tempNum.split(separator: "0")
//
//    for str in convertNum {
//        let num = Int(str)!
//        if isPrimeNumber(num) { result += 1 }
//    }
//    return result
//}
