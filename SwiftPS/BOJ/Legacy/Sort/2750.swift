//
//  2750.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/21.
//

// 2750 수 정렬하기
//import Foundation
//
//let N = Int(readLine()!)!
//var arr: [Int] = []
//
//for _ in 0..<N {
//    let num = Int(readLine()!)!
//    arr.append(num)
//}
//
//for _ in 0..<N-1 {
//    for i in 0..<N-1 {
//        if arr[i] > arr[i+1] {
//            let temp: Int = arr[i]
//            arr[i] = arr[i+1]
//            arr[i+1] = temp
//        }
//    }
//}
//
//for i in 0..<arr.count {
//    print(arr[i])
//}

// 2차풀이
//import Foundation
//
//let N = Int(readLine()!)!
//var arr: [Int] = []
//
//for _ in 0..<N {
//    let num = Int(readLine()!)!
//    arr.append(num)
//}
//
//for i in 0..<N-1 {
//    for j in 0..<N-i-1 {
//        if arr[j] > arr[j+1] {
//            let temp: Int = arr[j]
//            arr[j] = arr[j+1]
//            arr[j+1] = temp
//        }
//    }
//}
//
//for i in 0..<arr.count {
//    print(arr[i])
//}

