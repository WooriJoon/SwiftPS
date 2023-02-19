//
//  1931.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/19.
//

/// 1931 회의실배정

let N = Int(readLine()!)!
var meetings: [(start: Int, end: Int)] = []
var latestMeeting: (start: Int, end: Int) = (-1, -1)
var count: Int = 0

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    meetings.append((input[0], input[1]))
}

// 회의 끝나는 시간이 빠른 순으로 정렬(끝나는 시간 같으면 시작하는 시간순으로)
meetings.sort { $0.end == $1.end ? $0.start < $1.start : $0.end < $1.end }

for meeting in meetings {
    // 최근 회의가 끝난 시간보다 현재 회의가 시작하는 시간이 같거나 크면 회의 진행 가능
    if meeting.start >= latestMeeting.end {
        latestMeeting = (meeting.start, meeting.end)
        count += 1
    }
}

print(count)

/// 링크: https://www.acmicpc.net/problem/1931
