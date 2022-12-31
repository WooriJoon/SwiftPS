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
        guard !queue.isEmpty else {
            print(-1)
            break
        }
        print(queue.removeFirst())
        
    case "size":
        print(queue.count)
        
    case "empty":
        queue.isEmpty ? print(1) : print(0)
        
    case "front":
        guard !queue.isEmpty else {
            print(-1)
            break
        }
        print(queue.first!)
        
    case "back":
        guard !queue.isEmpty else {
            print(-1)
            break
        }
        print(queue.last!)
        
    default:
        break
    }
}

/// 링크: https://www.acmicpc.net/problem/10845
