//
//  MakeArrayConsecutive2 .swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class MakeArrayConsecutive2 {
    func solution(statues: [Int]) -> Int {
        var statues = statues
        statues.sort()
        
        var counter = 0
        
        for i in 0..<statues.count - 1 {
            let now = statues[i] + 1
            let next = statues[i + 1]
            if now != next {
                counter += next - now
            }
        }
        
        return counter
    }
}
