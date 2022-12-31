//
//  1406.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/12/31.
//

/// 1406 에디터

var left = readLine()!.map() { $0 }
var right: [Character] = []
let M = Int(readLine()!)!

for _ in 0..<M {
    let command = readLine()!

    switch command.first! {
    case "L":
        guard !left.isEmpty else { break }
        right.append(left.removeLast())
        
    case "D":
        guard !right.isEmpty else { break }
        left.append(right.removeLast())
        
    case "B":
        guard !left.isEmpty else { break }
        left.removeLast()
        
    case "P":
        left.append(command.last!)
        
    default:
        break
    }
}

print(String(left + right.reversed()))

/// 링크: https://www.acmicpc.net/problem/1406
