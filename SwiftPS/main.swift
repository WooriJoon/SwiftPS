//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

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
