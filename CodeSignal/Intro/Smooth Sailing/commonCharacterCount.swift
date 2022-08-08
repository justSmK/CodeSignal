//
//  commonCharacterCount.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class CommonCharacterCount {
    func solution(s1: String, s2: String) -> Int {
        var dict = Dictionary<Character, Int>()
        
        for elem in s1 {
            if dict.contains(where: { $0.key == elem }) {
                dict[elem]! += 1
            } else {
                dict[elem] = 1
            }
        }
        
        var counter = 0
        
        for elem in s2 {
            if dict.contains(where: { $0.key == elem && $0.value > 0 }) {
                counter += 1
                dict[elem]! -= 1
            }
        }
        
        return counter
    }
    
    func solution2(s1: String, s2: String) -> Int {
        
        var s2 = s2
        
        var commons = 0
        
        for c in s1 {
            if s2.contains(c) {
                let index = s2.firstIndex(of: c)
                commons += 1
                s2.remove(at: index!)
            }
        }
        
        return commons
    }
    
}
