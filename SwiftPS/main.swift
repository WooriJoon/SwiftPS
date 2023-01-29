//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let T = Int(readLine()!)!
var testCase: [Int] = []

for _ in 0..<T { testCase.append(Int(readLine()!)!) }
var answer: [(x: Int, y: Int)] = [(1, 0), (0, 1)]

for i in 2..<41 { answer.append(((answer[i-1].x + answer[i-2].x), (answer[i-1].y + answer[i-2].y))) }

for i in testCase { print(answer[i].x, answer[i].y) }
