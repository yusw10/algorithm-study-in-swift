//
//  PGS_CorrectParentheses_12909.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2023/01/15.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12909
//

import Foundation

func answer_12909() {
    let testInput: [String] = ["()()","(())()",")()(","(()("] //입력값 조정하기
    testInput.forEach { input in
        print(solution12909(input))
    }
}

func solution12909(_ s:String) -> Bool {
    var ans:Bool = false
    var parentheses: [String] = []
    for (_, currentparentheses) in s.enumerated() {
        //print( currentparentheses)
        if parentheses.count == 0 {
            if currentparentheses == ")" {
                return false
            }
            parentheses.append("\(currentparentheses)")
        } else {
            if currentparentheses == ")" {
                parentheses.removeLast()
            } else {
                parentheses.append("\(currentparentheses)")
            }
        }
    }
    if parentheses.count != 0 {
        ans = false
    } else {
        ans = true
    }
    return ans
}
