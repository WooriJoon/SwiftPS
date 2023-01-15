//
//  2580.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/13.
//

/// 2580 스도쿠

var sudoku: [[Int]] = []
var row: [[Bool]] = Array(repeating: Array(repeating: false, count: 10), count: 9)
var col: [[Bool]] = Array(repeating: Array(repeating: false, count: 10), count: 9)
var square: [[Bool]] = Array(repeating: Array(repeating: false, count: 10), count: 9)
var exit = false

for _ in 0..<9 { sudoku.append(readLine()!.split(separator: " ").map() { Int($0)! }) }
for i in sudoku.indices {
    for j in sudoku.indices {
        guard sudoku[i][j] != 0 else { continue }
        row[i][sudoku[i][j]] = true
        col[j][sudoku[i][j]] = true
        square[((i / 3) * 3) + (j / 3)][sudoku[i][j]] = true
    }
}

func DFS(depth: Int) {
    guard !exit else { return }
    
    guard depth != 81 else {
        answer()
        exit.toggle()
        return
    }

    let x = depth / 9
    let y = depth % 9

    guard sudoku[x][y] == 0 else {
        DFS(depth: depth + 1)
        return
    }

    let squarePosition = ((x / 3) * 3) + (y / 3)

    for number in 1...9 {
        if !row[x][number] && !col[y][number] && !square[squarePosition][number] {
            row[x][number].toggle()
            col[y][number].toggle()
            square[squarePosition][number].toggle()

            sudoku[x][y] = number
            DFS(depth: depth + 1)

            sudoku[x][y] = 0
            row[x][number].toggle()
            col[y][number].toggle()
            square[squarePosition][number].toggle()
        }
    }
}

func answer() {
    for i in 0..<9 {
        for j in 0..<9 { print(sudoku[i][j], terminator: " ") }
        print()
    }
}

DFS(depth: 0)

/// 링크: https://www.acmicpc.net/problem/2580
