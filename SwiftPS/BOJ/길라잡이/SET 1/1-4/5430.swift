//
//  5430.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/11.
//

/// 5430 AC

let T = Int(readLine()!)!

for _ in 0..<T {
    let p = readLine()!
    let n = Int(readLine()!)!
    let array = readLine()!.dropFirst().dropLast().split(separator: ",").map{ String($0)}

    var low = 0
    var high = n-1
    var isReversed = false
    var isError = false

    for command in p {
        switch command {
        case "R":
            isReversed.toggle()

        default:
            if low > high {
                isError.toggle()
                break
            }
            
            if !isReversed { low += 1 }
            else { high -= 1 }
        }
    }

    if isError {
        print("error")
    } else if low > high {
        print("[]")
    } else {
        let answer = array[low...high].map{ String($0) }.joined(separator: ",")
        let reverseAnswer = array[low...high].reversed().map{ String($0) }.joined(separator: ",")
        print(!isReversed ? "[\(answer)]" : "[\(reverseAnswer)]")
    }
}

/// 링크: https://www.acmicpc.net/problem/5430
