//
//  checkPalindrome.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class CheckPalindrome {
    func solution(inputString: String) -> Bool {
        return String(inputString.reversed()) == inputString
    }
    
    func solution2(inputString: String) -> Bool {
        let length = inputString.count / 2
        
        for i in 0...length {
            let start = inputString.index(inputString.startIndex, offsetBy: i)
            let end = inputString.index(inputString.endIndex, offsetBy: (i * -1) - 1)
            
            if inputString[start] != inputString[end] {
                return false
            }
        }
        
        return true
    }
}
