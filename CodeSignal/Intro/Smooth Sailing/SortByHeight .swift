//
//  SortByHeight .swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class SortByHeight {
    func solution(a: [Int]) -> [Int] {
        var array = a.sorted().filter { $0 != -1 }
        
        var result = [Int]()
        
        for element in a {
            if element == -1 {
                result.append(-1)
            } else {
                result.append(array.removeFirst())
            }
        }
        
        return result
    }
    
    func solution2(a: [Int]) -> [Int] {
        let array = a.filter {$0 != -1}.sorted()
        var ar = array.makeIterator()
        return a.map { ($0 == -1) ? $0 : ar.next()! }
    }

}
