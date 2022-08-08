//
//  isLucky.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class IsLucky {
    func solution(n: Int) -> Bool {
        let s = String(n).map{ Int(String($0))! }
        let s1 = s[0..<s.count / 2]
        let s2 = s[s1.count..<s.count]
            
        return s1.reduce(0, +) == s2.reduce(0, +)
    }
}
