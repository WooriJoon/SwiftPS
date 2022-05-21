//
//  4949.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/21.
//

// 4949 균형 잡힌 세상
//import Foundation
//
//while true {
//    let input = readLine()!
//    var valid: Bool = true
//
//    if input == "." { break }
//
//    var stack: [Character] = []
//
//    for ch in input {
//        switch ch {
//        case "(": stack.append("(")
//        case "[": stack.append("[")
//        case ")": if !stack.isEmpty && stack.last! == "(" { stack.popLast() }
//            else {
//                valid = false
//                break
//            }
//        case "]": if !stack.isEmpty && stack.last! == "[" { stack.popLast() }
//            else {
//                valid = false
//                break
//            }
//        default: continue
//        }
//    }
//
//    if stack.isEmpty && valid { print("yes") }
//    else { print("no") }
//}
