////
////  main.swift
////  SwiftPS
////
////  Created by Chicken on 2022/05/15.
////
//
import Foundation

struct Queue {
    private var Queue: [Int?] = []
    var front: Int = -1
    var rear: Int = -1

    mutating func push(_ X: Int) {
        self.front += 1
        Queue.append(X)
    }

    mutating func pop() {
        if Queue.isEmpty { print("-1") }
        else {
            self.rear += 1
            print(Queue[rear]!)
            Queue[rear] = nil
        }
    }

    func size() {
        print(Queue.count)
    }

    func empty() {
        if Queue.isEmpty { print("1") }
        else { print("0") }
    }

    func printFront() {
        if Queue.isEmpty { print("-1") }
        else { print(Queue.first!!) }
    }

    func printBack() {
        if Queue.isEmpty { print("-1") }
        else { print(Queue.last!!) }
    }
}

let N = Int(readLine()!)!
var queue = Queue()

for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map() { String($0) }
    let command: String = input[0]

    switch command {
    case "push":
        let num: Int = Int(input[1])!
        queue.push(num)

    case "pop":
        queue.pop()

    case "size":
        queue.size()

    case "empty":
        queue.empty()

    case "front":
        queue.printFront()

    case "back":
        queue.printBack()

    default:
        break
    }
}
