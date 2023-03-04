//
//  9576.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/03/04.
//

/// 9576 책 나눠주기

let testCase = Int(readLine()!)!

var NM: [Int] = []
var N = 0
var M = 0
var students: [(a: Int, b: Int)] = []   // 학생들이 적은 두 정수
var isGiven: [Bool] = []                // N번째 책이 주어졌는지 체크할 배열
var count: Int = 0                      // 책 받아간 학생 수

for _ in 0..<testCase {
    NM = readLine()!.split(separator: " ").map { Int($0)! }
    N = NM[0]
    M = NM[1]
    students = []
    isGiven = Array(repeating: false, count: N+1) // 인덱싱 편의(책번호 1부터 시작)를 위해 N+1만큼 크기 지정
    count = 0
    
    for _ in 0..<M {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        students.append((input[0], input[1]))
    }
    
    // 두번째 정수가 작은 순서대로 정렬
    students.sort { $0.b == $1.b ? $0.a < $1.a : $0.b < $1.b }
    
    for student in students {
        // 현재 학생이 원하는 번호의 책이 남아있다면 가져가고 바로 다음 학생 체크
        for i in student.a...student.b {
            guard !isGiven[i] else { continue }
            isGiven[i] = true
            count += 1
            break
        }
    }
    
    print(count)
}

/// 링크: https://www.acmicpc.net/problem/9576
