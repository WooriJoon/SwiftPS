//
//  2661.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/13.
//

/// 2661 좋은수열

let N = Int(readLine()!)!
var answer: [String] = ["1"]
let numberList: [String] = ["1", "2", "3"]
var exit = false

func DFS(depth: Int, sequence: [String]) {
    guard !exit else { return }
    guard depth != N-1 else {
        exit.toggle()
        print(answer.joined(separator: ""))
        return
    }
    
    for number in numberList {
        if isGoodSequence(sequence: answer + [number]) { DFS(depth: depth + 1, sequence: answer + [number]) }
    }
    
    answer.removeLast()
}

func isGoodSequence(sequence: [String]) -> Bool {
    guard answer.last! != sequence.last! else { return false }
    
    let count = sequence.count
    var left = count - 2
    let right = count - 1

    for i in 1..<(count/2) {
        guard sequence[(left-i-1)...(right-i-1)] != sequence[left...right] else { return false }
        left -= 1
    }
    
    answer = sequence
    return true
}

DFS(depth: 0, sequence: answer)

/// 링크: https://www.acmicpc.net/problem/2661
