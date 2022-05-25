//
//  소수 만들기.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/25.
//

// 소수 만들기
//import Foundation
//
//func solution(_ nums:[Int]) -> Int {
//    var answer: Int = 0
//
//    for i in 0..<nums.count {
//        for j in i + 1..<nums.count {
//            for k in j + 1..<nums.count {
//                let num: Int = nums[i] + nums[j] + nums[k]
//                var flag: Bool = true
//
//                for n in 2..<num {
//                    if num % n == 0 {
//                        flag = false
//                        break
//                    }
//                }
//
//                if flag { answer += 1 }
//            }
//        }
//    }
//    return answer
//}
