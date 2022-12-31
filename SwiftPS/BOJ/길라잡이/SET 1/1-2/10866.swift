//
//  10866.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/12/31.
//

// 10866 덱

let N = Int(readLine()!)!
var deque: [Int] = []

for _ in 0..<N {
    let command = readLine()!.split(separator: " ")

    switch command.first! {
    case "push_front":
        deque = deque.reversed()
        deque.append(Int(command[1])!)
        deque = deque.reversed()

    case "push_back":
        deque.append(Int(command[1])!)

    case "pop_front":
        print(deque.isEmpty ? -1 : deque.removeFirst())

    case "pop_back":
        print(deque.isEmpty ? -1 : deque.removeLast())

    case "size":
        print(deque.count)

    case "empty":
        print(deque.isEmpty ? 1 : 0)

    case "front":
        print(deque.isEmpty ? -1 : deque.first!)

    case "back":
        print(deque.isEmpty ? -1 : deque.last!)

    default:
        break
    }
}

/// 링크: https://www.acmicpc.net/problem/10866
