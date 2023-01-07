//
//  1158.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/07.
//

/// 1158 요세푸스 문제

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

/// 링크: https://www.acmicpc.net/problem/1158
