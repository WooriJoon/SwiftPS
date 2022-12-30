//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<N {
    let command = readLine()!.split(separator: " ")

    switch command.first! {
    case "push":
        stack.append(Int(command[1])!)
        
    case "pop":
        guard !stack.isEmpty else {
            print(-1)
            break
        }
        print(stack.removeLast())
        
    case "size":
        print(stack.count)
        
    case "empty":
        stack.isEmpty ? print(1) : print(0)
        
    case "top":
        guard !stack.isEmpty else {
            print(-1)
            break
        }
        print(stack[stack.count-1])
        
    default:
        break
    }
}
