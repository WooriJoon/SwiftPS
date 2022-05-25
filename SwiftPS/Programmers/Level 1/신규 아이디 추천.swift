//
//  신규 아이디 추천.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/25.
//

// 신규 아이디 추천
//import Foundation
//
//func solution(_ new_id:String) -> String {
//    var temp: String = new_id
//    var result: String = ""
//
//    // 1단계
//    temp = temp.lowercased()
//
//    // 2단계
//    for ch in temp {
//        if ch.isLetter || ch.isNumber || ch == "-" || ch == "_" || ch == "." {
//            result.append(ch)
//        }
//    }
//
//    // 3단계
//    while result.contains("..") {
//        result = result.replacingOccurrences(of: "..", with: ".")
//    }
//
//    // 4단계
//    if let ch = result.first {
//        if ch == "." { result.removeFirst() }
//    }
//    if let ch = result.last {
//        if ch == "." { result.removeLast() }
//    }
//
//    // 5단계
//    if result.isEmpty {
//        result.append("a")
//    }
//
//    // 6단계
//    while result.count > 15 { result.removeLast() }
//    if result.last! == "." { result.removeLast() }
//
//    // 7단계
//    while result.count < 3 { result.append(result.last!) }
//
//    return result
//}
