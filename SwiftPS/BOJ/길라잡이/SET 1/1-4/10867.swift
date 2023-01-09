//
//  10867.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/10.
//

/// 10867 중복 빼고 정렬하기

let N = Int(readLine()!)!
var input = Set(readLine()!.split(separator: " ").map() { Int($0)! })
let answer = input.sorted()

print(answer.map(){String($0)}.joined(separator: " "))

/// 링크: https://www.acmicpc.net/problem/10867
