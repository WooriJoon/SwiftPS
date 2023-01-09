//
//  10816.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/10.
//

/// 10861 숫자 카드 2

let N = Int(readLine()!)!
let givenCards = readLine()!.split(separator: " ").map() { Int($0)! }
let M = Int(readLine()!)!
let myCards = readLine()!.split(separator: " ").map() { Int($0)! }

var dictionary: [Int: Int] = [:]
var answer: [Int] = []

for i in givenCards {
    guard dictionary.keys.contains(i) else {
        dictionary[i] = 1
        continue
    }
    dictionary[i]! += 1
}

for i in myCards {
    guard dictionary.keys.contains(i) else {
        answer.append(0)
        continue
    }
    answer.append(dictionary[i]!)
}

print(answer.map(){String($0)}.joined(separator: " "))

/// 링크 https://www.acmicpc.net/problem/10816
