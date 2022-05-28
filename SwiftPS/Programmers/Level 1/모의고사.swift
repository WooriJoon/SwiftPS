//
//  모의고사.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/27.
//

// 모의고사
//import Foundation
//
//func solution(_ answers:[Int]) -> [Int] {
//    let markNumbers1: [Int] = [1, 2, 3, 4, 5]
//    let markNumbers2: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
//    let markNumbers3: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
//
//    var tempResult: [Int] = [0, 0, 0]
//    var result: [Int] = []
//
//    for i in 0..<answers.count {
//        if answers[i] == markNumbers1[i % markNumbers1.count] { tempResult[0] += 1 }
//        if answers[i] == markNumbers2[i % markNumbers2.count] { tempResult[1] += 1 }
//        if answers[i] == markNumbers3[i % markNumbers3.count] { tempResult[2] += 1 }
//    }
//
//    let maxScore: Int = tempResult.max()!
//    for i in 0..<3 {
//        if maxScore == tempResult[i] { result.append(i + 1) }
//    }
//
//    return result
//}
