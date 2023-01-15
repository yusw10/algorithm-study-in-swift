//
//  PGS_DigitsSum_12931.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2023/01/15.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12931
//

import Foundation

func answer_12931() {
    let testInput: [Int] = [123,987] //입력값 조정하기
    testInput.forEach { input in
        print(solution12937(input))
    }
}

func solution12937(_ n:Int) -> Int {
    var answer: Int = 0
    var target = n
    
    while (target != 0) {
        answer += (target % 10)
        target = target / 10
    }
    
    return answer
}
