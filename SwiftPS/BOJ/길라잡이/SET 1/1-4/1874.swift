//
//  1874.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/10.
//

/// 1874 스택 수열

let n = Int(readLine()!)!
var input: [Int] = []
var stack: [Int] = []
var answer: [String] = []
var index: Int = 1
var flag: Bool = false

for _ in 0..<n { input.append(Int(readLine()!)!) }

for currentNumber in input {
    while index <= currentNumber {
        stack.append(index)
        answer.append("+")
        index += 1
    }
    
    guard stack.last == currentNumber else {
        print("NO")
        flag.toggle()
        break
    }
    
    stack.removeLast()
    answer.append("-")
}

if !flag { print(answer.joined(separator: "\n")) }

/// 링크: https://www.acmicpc.net/problem/1874
