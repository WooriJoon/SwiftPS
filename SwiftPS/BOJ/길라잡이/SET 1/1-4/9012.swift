//
//  9012.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/09.
//

/// 9012 괄호

let T = Int(readLine()!)!
var stack: [Int] = []

OUTER: for _ in 0..<T {
    let input = readLine()!.map() { $0 }
    
    guard input.first! != ")" else {
        print("NO")
        continue
    }
    
    for i in 0..<input.count {
        switch input[i] {
        case "(":
            stack.append(0)
            
        case ")":
            guard stack.count != 0 else {
                print("NO")
                continue OUTER
            }
            stack.removeLast()
            
        default:
            break
        }
    }
    print(stack.count == 0 ? "YES" : "NO")
    
    stack = []
}

/// 링크: https://www.acmicpc.net/problem/9012
