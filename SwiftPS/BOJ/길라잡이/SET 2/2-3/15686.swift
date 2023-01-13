//
//  15686.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/01/13.
//

/// 15686 치킨 배달

let input = readLine()!.split(separator: " ")
let N = Int(input[0])!
let M = Int(input[1])!

var city: [[Int]] = []
for _ in 0..<N { city.append(readLine()!.split(separator: " ").map() { Int($0)! }) }

var houseCoordinates: [(Int, Int)] = []
var chickenCoordinates: [(Int, Int, Bool)] = []
var chickenDistance: Int = 1000000

for i in city.indices {
    for j in city.indices {
        if city[i][j] == 1 { houseCoordinates.append((i, j)) }
        if city[i][j] == 2 { chickenCoordinates.append((i, j, false)) }
    }
}

func DFS(depth: Int, start: Int) {
    if depth == M {
        var sum: Int = 0
        let selectedChicken = chickenCoordinates.filter() { $0.2 == true }
        
        for i in houseCoordinates.indices {
            var minDistance: Int = 1000000
            var currentMinDistance: Int = 1000000
            
            for j in selectedChicken.indices {
                let differenceOfX = abs(houseCoordinates[i].0 - selectedChicken[j].0)
                let differenceOfY = abs(houseCoordinates[i].1 - selectedChicken[j].1)
                currentMinDistance = differenceOfX + differenceOfY
                minDistance = min(minDistance, currentMinDistance)
            }
            sum += minDistance
        }
        chickenDistance = min(chickenDistance, sum)
        return
    }

    for i in start..<chickenCoordinates.count {
        guard !chickenCoordinates[i].2 else { continue }
        chickenCoordinates[i].2.toggle()
        DFS(depth: depth + 1, start: i)
        chickenCoordinates[i].2.toggle()
    }
}

DFS(depth: 0, start: 0)
print(chickenDistance)

/// 링크: https://www.acmicpc.net/problem/15686
