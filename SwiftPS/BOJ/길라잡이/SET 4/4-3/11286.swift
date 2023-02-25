//
//  11286.swift
//  SwiftPS
//
//  Created by WooriJoon on 2023/02/24.
//

/// 11286 절댓값 힙

//import sys
//import heapq

//N = int(sys.stdin.readline())
//positiveHeap = []
//negativeHeap = []
//
//for _ in range(0, N):
//    num = int(sys.stdin.readline())
//
//    if num != 0:
//        # 음수일 때도 절대값으로 push
//        if num > 0: heapq.heappush(positiveHeap, num)
//        else: heapq.heappush(negativeHeap, abs(num))
//
//    else:
//        positiveLenth = len(positiveHeap)
//        negativeLength = len(negativeHeap)
//
//        if positiveLenth == 0 and negativeLength == 0: print(0)
//        elif positiveLenth > 0 and negativeLength == 0: print(heapq.heappop(positiveHeap))
//        elif positiveLenth == 0 and negativeLength > 0: print(-1 * heapq.heappop(negativeHeap))
//        else:
//            # 각 힙의 최소값의 절대값들이 같으면 음수 출력
//            if positiveHeap[0] == negativeHeap[0]: print(-1 * heapq.heappop(negativeHeap))
//            elif positiveHeap[0] > negativeHeap[0]: print(-1 * heapq.heappop(negativeHeap))
//            else: print(heapq.heappop(positiveHeap))

/// 링크: https://www.acmicpc.net/problem/11286
