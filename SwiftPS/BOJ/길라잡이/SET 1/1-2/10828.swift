//
//  10828.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/12/30.
//

/// 10828 스택

let N = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<N {
    let command = readLine()!.split(separator: " ")

    switch command.first! {
    case "push":
        stack.append(Int(command[1])!)

    case "pop":
        print(stack.isEmpty ? -1 : stack.removeLast())
        
    case "size":
        print(stack.count)

    case "empty":
        print(stack.isEmpty ? 1 : 0)

    case "top":
        print(stack.isEmpty ? -1 : stack.last!)

    default:
        break
    }
}

/// 링크:  https://www.acmicpc.net/problem/10828
