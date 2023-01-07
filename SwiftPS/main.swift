//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
var coordinates: [(Int, Int)] = []

for _ in 0..<N {
    let input = readLine()!.split(separator: " ")
    coordinates.append((Int(input[0])!, Int(input[1])!))
}

let answer = coordinates.sorted() { $0.1 != $1.1 ? $0.1 < $1.1 : $0.0 < $1.0 }

for i in 0..<N { print(answer[i].0, answer[i].1) }
