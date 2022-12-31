//
//  10845.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/12/31.
//

// 10845 큐

let N = Int(readLine()!)!
var queue: [Int] = []

for _ in 0..<N {
    let command = readLine()!.split(separator: " ")

    switch command.first! {
    case "push":
        queue.append(Int(command[1])!)
        
    case "pop":
        print(queue.isEmpty ? -1 : queue.removeFirst())
        
    case "size":
        print(queue.count)
        
    case "empty":
        print(queue.isEmpty ? 1 : 0)
        
    case "front":
        print(queue.isEmpty ? -1 : queue.first!)
        
    case "back":
        print(queue.isEmpty ? -1 : queue.last!)
        
    default:
        break
    }
}

/// 링크: https://www.acmicpc.net/problem/10845
