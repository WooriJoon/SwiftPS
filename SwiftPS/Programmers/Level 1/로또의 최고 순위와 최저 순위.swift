//
//  로또의 최고 순위와 최저 순위.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/25.
//

// 로또의 최고 순위와 취저 순위
//import Foundation
//
//func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
//    var numberOfZero: Int = 0
//    var numberOfCorrect: Int = 0
//
//    for i in lottos {
//        guard i != 0 else {
//            numberOfZero += 1
//            continue
//        }
//        for j in win_nums {
//            if i == j { numberOfCorrect += 1 }
//        }
//    }
//    return [min(7 - numberOfCorrect - numberOfZero, 6), min(7 - numberOfCorrect, 6)]
//}
