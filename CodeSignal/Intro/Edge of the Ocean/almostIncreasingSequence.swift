//
//  almostIncreasingSequence.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class AlmostIncreasingSequence {
    func isStrictlyIncreasing(array: [Int]) -> Bool {
        for i in 0..<(array.count - 1) {
            if array[i] >= array[i + 1] {
                return false
            }
        }
        return true
    }
    
    func solution(sequence: [Int]) -> Bool {
        if isStrictlyIncreasing(array: sequence) {
            return true
        }
        
        var a = sequence, r = [Int]()
        for i in 0..<(a.count-1) {
            if a[i] >= a[i + 1] {
                r += [i, i + 1]
            }
        }
        
        for i in 0..<r.count {
            a = sequence
            a.remove(at: r[i])
            if isStrictlyIncreasing(array: a) {
                return true
            }
        }
        return false
    }
    
    func solution2(sequence: [Int]) -> Bool {
        var strikes = 0, firstMax = -100000, secondMax = -100000
        
        for i in 0...sequence.count - 1 {
            if sequence[i] > firstMax {
                secondMax = firstMax
                firstMax = sequence[i]
            } else if sequence[i] > secondMax {
                firstMax = sequence[i];
                strikes += 1
            } else {
                strikes += 1
            }
        }
        
        return strikes < 2
    }
}
