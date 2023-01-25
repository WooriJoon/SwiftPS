//
//  main.swift
//  SwiftPS
//
//  Created by WooriJoon on 2022/05/15.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var N = input[0]
let K = input[1]

var queue: [(point: Int, sec: Int)] = []
var visitedPoints: [Bool] = Array(repeating: false, count: 100001)
var index: Int = 0

guard N != K else {
    print(0)
    exit(0)
}

queue.append((N, 0))

while true {
    let current = queue[index]
    let currentPoint = current.point
    let currentSec = current.sec
    
    guard currentPoint != K else {
        print(currentSec)
        break
    }
    
    for nextPoint in [currentPoint - 1, currentPoint + 1, currentPoint * 2] {
        guard nextPoint >= 0 && nextPoint <= 100000 && !visitedPoints[nextPoint] else { continue }
        visitedPoints[nextPoint] = true
        queue.append((nextPoint, currentSec + 1))
    }
    
    index += 1
}


