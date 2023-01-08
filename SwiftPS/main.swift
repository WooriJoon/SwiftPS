//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

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
