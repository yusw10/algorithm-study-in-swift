//
//  PGS_harshad_12947.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2023/01/15.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12947?language=swift
//
import Foundation

func answer_12947() {
    let testInput: [Int] = [10, 12, 11, 13] //입력값 조정하기
    testInput.forEach { input in
        print(solution12947(input))
    }
}

func solution12947(_ x:Int) -> Bool {
    var sum = 0
    var target = x
    while target != 0 {
        sum += target % 10
        target = target / 10
    }
    //print("\(x) - \(sum)")
    if x % sum == 0 {
        return true
    }
    return false
}
