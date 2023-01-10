//
//  1966.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/10.
//

/// 1966 프린터 큐

let testCase = Int(readLine()!)!

for _ in 0..<testCase {
    let input = readLine()!.split(separator: " ").map() { Int($0)! }
    var priority = readLine()!.split(separator: " ").map() { Int($0)! }
    let N = input[0]
    let M = input[1]
    var queue: [(Int, Bool)] = []
    var count: Int = 1

    for i in 0..<N {
        if i != M { queue.append((priority[i], false)) }
        else { queue.append((priority[i], true)) }
    }
    
    priority.sort(by: >)

    while true {
        guard queue[0].0 == priority.max() else {
            queue.append(queue.removeFirst())
            continue
        }
        
        if queue[0].1 {
            break
        } else {
            queue.removeFirst()
            priority.removeFirst()
            count += 1
        }
    }
    
    print(count)
}

/// 링크: https://www.acmicpc.net/problem/1966
