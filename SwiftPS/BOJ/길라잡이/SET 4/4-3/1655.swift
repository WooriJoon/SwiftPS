//
//  1655.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/24.
//

/// 1655 가운데를 말해요

//import sys
//import heapq
//
//N = int(sys.stdin.readline())
//minHeap = []
//minLength = 0
//maxHeap = []
//maxLength = 0
//
//for i in range(0, N):
//    num = int(sys.stdin.readline())
//
//    if i == 0:
//        heapq.heappush(maxHeap, -1 * num)
//        maxLength += 1
//
//    elif maxLength <= minLength:
//        heapq.heappush(maxHeap, -1 * num)
//        maxLength += 1
//
//    else:
//        heapq.heappush(minHeap, num)
//        minLength += 1
//
//    if maxLength > 0 and minLength > 0 and (-1 * maxHeap[0]) > minHeap[0]:
//        max = heapq.heappop(maxHeap)
//        min = heapq.heappop(minHeap)
//
//        heapq.heappush(maxHeap, -1 * min)
//        heapq.heappush(minHeap, -1 * max)
//
//    print(-1 * maxHeap[0])

/// 링크: https://www.acmicpc.net/problem/1655
