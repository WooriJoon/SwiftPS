//
//  main.swift
//  SwiftPS
//
//  Created by Chicken on 2022/05/15.
//

import Foundation

let input = readLine()!.split(separator: " ").map() { Int($0)! }
let N = input[0]
let M = input[1]

var pokemonIndex: Dictionary<Int, String> = [:]
var pokemonName: Dictionary<String, Int> = [:]

for i in 1...N {
    let pokemon = readLine()!
    pokemonIndex[i] = pokemon
    pokemonName[pokemon] = i
}

for _ in 0..<M {
    let problem = readLine()!
    
    guard let num = Int(problem) else {
        print(pokemonName[problem]!)
        continue
    }
    print(pokemonIndex[num]!)
}
