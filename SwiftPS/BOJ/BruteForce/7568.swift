//
//  7568.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/21.
//

// 7568 덩치
//import Foundation
//
//let N = Int(readLine()!)!
//var people: [[Int]] = []
//var rank: [Int] = []
//
//for _ in 0..<N {
//    people.append(readLine()!.split(separator: " ").map() { Int($0)! })
//}
//
//for i in 0..<N {
//    var currRank: Int = 1
//
//    for j in 0..<N {
//        if people[i][0] < people[j][0] && people[i][1] < people[j][1] { currRank += 1 }
//    }
//    rank.append(currRank)
//}
//
//for i in 0..<N {
//    print(rank[i], terminator: " ")
//}

// 왜 틀림?
//let N = Int(readLine()!)!
//var people: [(Int, Int)] = []
//var rank: [Int] = []
//
//for _ in 0..<N {
//    let input = readLine()!.split(separator: " ").map() { Int($0)! }
//    people.append((input[0], input[1]))
//}
//
//print(people)
//
//for i in 0..<N {
//    var currRank: Int = 1
//
//    for j in 0..<N {
//        if people[i].0 < people[j].0 && people[i].1 < people[j].1 {
//            currRank += 1
//        }
//    }
//    rank.append(currRank)
//}
//
//for i in 0..<N {
//    print(rank[i], terminator: " ")
//}
