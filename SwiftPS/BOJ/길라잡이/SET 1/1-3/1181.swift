//
//  1181.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/01.
//

/// 1181 단어 정렬

let N = Int(readLine()!)!
var words: Set<String> = []

for _ in 0..<N { words.insert(readLine()!) }

let sortedWords = words.sorted().sorted() { $0.count < $1.count }

for i in sortedWords.indices { print(sortedWords[i]) }

/// 링크: https://www.acmicpc.net/problem/1181
