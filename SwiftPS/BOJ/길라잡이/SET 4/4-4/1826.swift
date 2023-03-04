//
//  1826.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/03/02.
//

/// 1826 연료 채우기

struct MinHeap<T: Comparable> {
    var heap: [T] = []
    
    var isEmpty: Bool {
        return heap.count <= 1 ? true : false
    }
    
    init() {}
    init(_ element: T) {
        heap.append(element) // 0번 index채우기 용
        heap.append(element) // 실제 Root Node 채움.
    }
    
    func count() -> Int {
        return heap.count
    }
    
    func peak() -> T? {
        if self.isEmpty { return nil }
        return heap[1]
    }
    
    mutating func insert(_ element: T) {
        if heap.isEmpty {
            heap.append(element)
            heap.append(element)
            return
        }
        heap.append(element)
        
        func isMoveUp(_ insertIndex: Int) -> Bool {
            if insertIndex <= 1 { // Root Node일 때,
                return false
            }
            let parentIndex = insertIndex / 2
            return heap[insertIndex] < heap[parentIndex] ? true : false
        }
        
        var insertIndex = heap.count - 1
        while isMoveUp(insertIndex) {
            let parentIndex = insertIndex / 2
            heap.swapAt(insertIndex, parentIndex)
            insertIndex = parentIndex
        }
    }
    
    enum moveDownStatus { case left, right, none }
    
    mutating func pop() -> T? {
        if heap.count <= 1 {
            return nil
        }
        let returnData = heap[1]
        heap.swapAt(1, heap.count - 1)
        heap.removeLast()
        
        func moveDown(_ poppedIndex: Int) -> moveDownStatus {
            let leftChildIndex = poppedIndex * 2
            let rightChildIndex = leftChildIndex + 1
            
            // 자식이 없는 경우 자기자신 제거
            if leftChildIndex >= heap.count {
                return .none
            }
            
            // 왼쪽 자식만 있다면 부모와 자식 노드 중 작은 수를 제거
            if rightChildIndex >= heap.count {
                return heap[leftChildIndex] < heap[poppedIndex] ? .left : .none
            }
            
            // 왼쪽, 오른쪽 자식 모두가 자신보다 큰 경우 부모 노드를 제거
            if (heap[leftChildIndex] > heap[poppedIndex]) && (heap[rightChildIndex] > heap[poppedIndex]) {
                return .none
            }
            
            // 왼쪽, 오른쪽 자식 최소 하나 이상 부모보다 작은 경우, 가장 작은 노드를 제거한다.
            if (heap[leftChildIndex] < heap[poppedIndex]) || (heap[rightChildIndex] < heap[poppedIndex]) {
                return heap[leftChildIndex] < heap[rightChildIndex] ? .left : .right
            }
            
            return .none
        }
        
        var poppedIndex = 1
        while true {
            switch moveDown(poppedIndex) {
            case .none:
                return returnData
            case .left:
                let leftChildIndex = poppedIndex * 2
                heap.swapAt(poppedIndex, leftChildIndex)
                poppedIndex = leftChildIndex
            case .right:
                let rightChildIndex = (poppedIndex * 2) + 1
                heap.swapAt(poppedIndex, rightChildIndex)
                poppedIndex = rightChildIndex
            }
        }
    }
}

let N = Int(readLine()!)!
var info: [(distance: Int, amount: Int)] = []
for _ in 0..<N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    info.append((input[0], input[1]))
}
let LP = readLine()!.split(separator: " ").map { Int($0)! }
let L = LP[0]
var P = LP[1]

info.sort(by: { $0.distance < $1.distance })
// 도착할 위치를 추가하여 마지막까지 연료 검사
info.append((L, -1))

var maxHeap: MinHeap<Int> = MinHeap()
var fuel = P    // 현재 남은 연료
var index: Int = 0  // 현재 몇번째 주유소인지 가리킬 인덱스
var count: Int = 0  // 주유소 들른 횟수

// 마을에 도착할 때까지 반복
while fuel < L {
    // 들를 주유소가 있고 && 현재 연료로 다음 주유소로 갈 수 있다면 반복
    while index < N && info[index].distance <= fuel {
        maxHeap.insert(-info[index].amount)
        index += 1
    }
    
    // 힙이 비어있을때(남은 연료로 갈 수 있는 주유소가 없다면) 처리
    guard maxHeap.count() > 1 else {
        count = -1
        break
    }
    
    // 연료의 양이 가장 많았던 주유소부터 연료 채움
    count += 1
    fuel += -maxHeap.pop()!
}

print(count)

/// 링크: https://www.acmicpc.net/problem/1826
