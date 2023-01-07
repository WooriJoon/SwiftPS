//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let input = readLine()!.split(separator: " ")
let N = Int(input[0])!
let K = Int(input[1])!

var array = Array(1...N)
var answer: [String] = []
var index = (K - 1)

while array.count > 1 {
    if index > array.count - 1 { index %= array.count }
    
    answer.append(String(array.remove(at: index)))
    index += (K - 1)
}

answer.append(String(array.first!))

print("<\(answer.joined(separator: ", "))>")
