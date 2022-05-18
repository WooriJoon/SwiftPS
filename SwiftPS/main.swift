//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let C = Int(readLine()!)!

for _ in 0..<C {
    let input = readLine()!.split(separator: " ").map() { Int($0)! }
    var avg: Double = 0
    var count: Double = 0
    
    for i in 1..<input.count { avg += Double(input[i]) }
    avg /= Double(input[0])
    
    for i in 1..<input.count {
        if Double(input[i]) > avg { count += 1 }
    }
    
    print("\(count / Double(input[0]) * 100)%")
}
