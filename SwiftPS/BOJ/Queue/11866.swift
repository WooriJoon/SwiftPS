//
//  11866.swift
//  SwiftPS
//
//  Created by Chicken on 2022/06/03.
//

// 11866 요세푸스 문제 0
//import Foundation
//
//let input = readLine()!.split(separator: " ").map() { Int($0)! }
//let N = input[0]
//let K = input[1]
//var circularQueue: [Int] = []
//var index: Int = -1
//var result: [Int] = []
//
//for i in 1...N { circularQueue.append(i) }
//
//while circularQueue.count > 0 {
//    for _ in 1...K {
//        if index == circularQueue.count - 1 { index = 0 }
//        else { index += 1 }
//    }
//
//    result.append(circularQueue.remove(at: index))
//    index -= 1
//}
//
//print("<", terminator: "")
//for i in 0..<result.count {
//    if i != result.count - 1 { print("\(result[i]), ", terminator: "") }
//    else { print("\(result[i])>") }
//}
