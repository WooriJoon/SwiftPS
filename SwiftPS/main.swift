//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var arr1Copy: [Int] = arr1
    var arr2Copy: [Int] = arr2
    
    for i in 0..<n {
        var map1: [Int] = []
        var map2: [Int] = []

        for _ in 0..<n {
            map1.append(arr1Copy[i] % 2)
            map2.append(arr2Copy[i] % 2)
            arr1Copy[i] /= 2
            arr2Copy[i] /= 2
        }

        map1 = map1.reversed()
        map2 = map2.reversed()

        var tempString: String = ""
        for j in 0..<n {
            if map1[j] == 0 && map2[j] == 0 { tempString += " " }
            else { tempString += "#" }
        }
        answer.append(tempString)
    }
    return answer
}
