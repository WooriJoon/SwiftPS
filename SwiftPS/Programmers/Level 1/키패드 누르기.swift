//
//  키패드 누르기.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/26.
//

// 키패드 누르기
//import Foundation
//
//func solution(_ numbers:[Int], _ hand:String) -> String {
//    var result: String = ""
//    var currLeft: Int = 10
//    var currRight: Int = 12
//
//    for num in numbers {
//        switch num {
//        case 1, 4, 7:
//            result.append("L")
//            currLeft = num
//
//        case 3, 6, 9:
//            result.append("R")
//            currRight = num
//
//        case 2, 5, 8, 0:
//            var tempNum: Int = num
//            if tempNum == 0 { tempNum = 11 }
//
//            let leftDistance: Int = abs(tempNum - currLeft) / 3 + abs(tempNum - currLeft) % 3
//            let rightDistance: Int = abs(tempNum - currRight) / 3 + abs(tempNum - currRight) % 3
//
//            if leftDistance > rightDistance {
//                result.append("R")
//                currRight = tempNum
//            } else if rightDistance > leftDistance {
//                result.append("L")
//                currLeft = tempNum
//            } else {
//                if hand == "left" {
//                    result.append("L")
//                    currLeft = tempNum
//                } else {
//                    result.append("R")
//                    currRight = tempNum
//                }
//            }
//
//        default:
//            break
//        }
//    }
//    return result
//}

// 무지성 풀이
//let numbers: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
//let hand: String = "right"
//
//let keypad: [[Int]] = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 0 ,10]]
//var result: String = ""
//var currLeft: Int = 0
//var currRight: Int = 0
//
//func shortHand(_ keypad: [[Int]], _ press: Int, _ left: Int, _ right: Int) -> String {
//    var pressX: Int = 0
//    var pressY: Int = 0
//    var leftX: Int = 0
//    var leftY: Int = 0
//    var rightX: Int = 0
//    var rightY: Int = 0
//    var leftDistance: Int = 0
//    var rightDistance: Int = 0
//
//    for i in 0..<4 {
//        for j in 0..<3 {
//            if keypad[i][j] == press {
//                pressX = i
//                pressY = j
//                break
//            }
//        }
//    }
//
//    for i in 0..<4 {
//        for j in 0..<3 {
//            if keypad[i][j] == left {
//                leftX = i
//                leftY = j
//                break
//            }
//        }
//    }
//
//    for i in 0..<4 {
//        for j in 0..<3 {
//            if keypad[i][j] == right {
//                rightX = i
//                rightY = j
//                break
//            }
//        }
//    }
//
//    leftDistance = abs(pressX - leftX) + abs(pressY - leftY)
//    rightDistance = abs(pressX - rightX) + abs(pressY - rightY)
//
//    if leftDistance == rightDistance { return "equal" }
//    else if leftDistance > rightDistance { return "right" }
//    else { return "left" }
//}
//
//for num in numbers {
//    switch num {
//    case 1, 4, 7:
//        result.append("L")
//        currLeft = num
//
//    case 3, 6, 9:
//        result.append("R")
//        currRight = num
//
//    case 2, 5, 8, 0:
//        let status: String = shortHand(keypad, num, currLeft, currRight)
//        switch status {
//        case "left":
//            result.append("L")
//            currLeft = num
//
//        case "right":
//            result.append("R")
//            currRight = num
//
//        case "equal":
//            if hand == "left" {
//                result.append("L")
//                currLeft = num
//            } else {
//                result.append("R")
//                currRight = num
//            }
//
//        default:
//            break
//        }
//
//    default:
//        break
//    }
//}
//
//print(result)
