//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

var stack: [Int] = []
let N = Int(readLine()!)!

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map() { String($0) }
    let command: String = input[0]
    
    switch command {
    case "push":
        stack.append(Int(input[1])!)
        
    case "pop":
        if stack.isEmpty {
            print("-1")
            break
        } else {
            print(stack.last!)
            stack.removeLast()
        }
        
    case "size":
        print(stack.count)
        
    case "empty":
        if !stack.isEmpty { print("0") }
        else { print("1") }
        
    case "top":
        if stack.isEmpty {
            print("-1")
            break
        } else {
            print(stack.last!)
        }
        
    default:
        print("Error")
    }
}
