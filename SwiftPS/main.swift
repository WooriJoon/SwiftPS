//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

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
