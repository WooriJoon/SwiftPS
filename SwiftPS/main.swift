//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var copyBoard: [[Int]] = board
    var basket: [Int] = []
    var result: Int = 0

    for i in 0..<moves.count {
        let column: Int = moves[i] - 1

        for row in 0..<copyBoard.count {
            guard copyBoard[row][column] != 0 else { continue }

            if copyBoard[row][column] == basket.last {
                basket.removeLast()
                result += 1
            } else { basket.append(copyBoard[row][column]) }

            copyBoard[row][column] = 0
            break
        }
    }
    return result * 2
}
