//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
var input = Set(readLine()!.split(separator: " ").map() { Int($0)! })
let answer = input.sorted()

print(answer.map(){String($0)}.joined(separator: " "))
