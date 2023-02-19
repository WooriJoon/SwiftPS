//
//  2529.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/19.
//

/// 2529 부등호

let N = Int(readLine()!)!
let seq = readLine()!.split(separator: " ").map { $0 }
let nums = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

var visited = Array(repeating: false, count: 10)
var temp: [Int] = []
var answer: [String] = []
var exit = false

func maxDFS(_ current: Int, _ depth: Int) {
    if exit { return }

    if depth == N+1 {
        exit = true
        answer.append(temp.map { String($0) }.joined())
        return
    }

    for i in nums.reversed() {
        guard !visited[i] else { continue }

        if depth != 0 {
            if seq[depth-1] == "<" && current >= i { continue }
            if seq[depth-1] == ">" && current <= i { continue }
        }

        visited[i] = true
        temp.append(i)
        maxDFS(i, depth + 1)
        visited[i] = false
        temp.removeLast()
    }
}

func minDFS(_ current: Int, _ depth: Int) {
    if exit { return }

    if depth == N+1 {
        exit = true
        answer.append(temp.map { String($0) }.joined())
        return
    }

    for i in nums {
        guard !visited[i] else { continue }

        if depth != 0 {
            if seq[depth-1] == "<" && current >= i { continue }
            if seq[depth-1] == ">" && current <= i { continue }
        }

        visited[i] = true
        temp.append(i)
        minDFS(i, depth + 1)
        visited[i] = false
        temp.removeLast()
    }
}

maxDFS(0, 0)
print(answer.max()!)
exit = false
minDFS(0, 0)
print(answer.min()!)

/// 링크: https://www.acmicpc.net/problem/2529
