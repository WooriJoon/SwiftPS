//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let N = Int(readLine()!)!
var words: Set<String> = []

for _ in 0..<N { words.insert(readLine()!) }

let sortedWords = words.sorted().sorted() { $0.count < $1.count }

for i in sortedWords.indices { print(sortedWords[i]) }
