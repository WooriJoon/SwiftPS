//
//  가장 큰 정사각형 찾기.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/24.
//

// 가장 큰 정사각형 찾기
//import Foundation
//
//func solution(_ board:[[Int]]) -> Int
//{
//    var board: [[Int]] = board
//    var row: Int = board.count
//    var col: Int = board[0].count
//    var area: Int = 0
//
//    if row == 1 || col == 1 {
//        for i in 0..<row {
//            for j in 0..<col {
//                if board[i][j] == 1 { return 1 }
//            }
//        }
//        return 0
//    }
//
//    for i in 1..<row {
//        for j in 1..<col {
//            if board[i][j] == 1 {
//                board[i][j] += min(board[i - 1][j - 1], board[i][j - 1], board[i - 1][j])
//
//                if area < board[i][j] { area = board[i][j] }
//            }
//        }
//    }
//    return area * area
//}
