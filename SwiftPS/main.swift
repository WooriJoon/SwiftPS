//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let dartResult: String = "1D2S#10S"
var splitResult: [String] = []
var result: Int = 0
var temp = ""

//for ch in dartResult {
//    if Int(String(ch)) == nil {
//        splitResult[splitResult.count -  1].append(ch)
//    } else {
//        splitResult.append(String(ch))
//    }
//}

for word in dartResult {
    if (Int(String(word)) == nil) { // 숫자가 아닌경우
      if word == "*" || word == "#" {
        splitResult[splitResult.count-1] += String(word)
      } else {
        temp += String(word)
        splitResult.append(temp)
        temp = ""
      }
    } else { // 숫자인경우
      temp += String(word)
    }
}

print(splitResult)
