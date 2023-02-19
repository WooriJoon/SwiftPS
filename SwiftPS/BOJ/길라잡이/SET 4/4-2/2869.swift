//
//  2869.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/17.
//

/// 2869 달팽이는 올라가고 싶다

let input = readLine()!.split(separator: " ").map { Int($0)! }
let A = input[0]
let B = input[1]
let V = input[2]

// 최소 여기까지 오면 다음날에 나갈 수 있음
let minHeight = V-A
// 실질적으로 하루에 오를 수 있는 높이
let climbHeightOfDay = A-B

// 한번에 오를 경우
if minHeight <= 0 { print(1) }
// 두번만에 오를경우
else if minHeight / climbHeightOfDay == 0 { print(2) }
else {
    // 나누어 떨어지면 마지막 날에 막대의 높이에 딱 맞춰 올라감
    if minHeight % climbHeightOfDay == 0 {
        print((minHeight / climbHeightOfDay) + 1)
    // 안나누어 떨어지면 하루 덜 세기 때문에 +2
    } else {
        print((minHeight / climbHeightOfDay) + 2)
    }
}

/// 링크: https://www.acmicpc.net/problem/2869
