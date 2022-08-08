//
//  adjacentElementsProduct.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class AdjacentElementsProduct {
    func solution(inputArray: [Int]) -> Int {
        var maxMult = Int.min
        for i in 0..<inputArray.count - 1 {
            let mult = inputArray[i] * inputArray[i + 1]
            if mult > maxMult {
                maxMult = mult
            }
        }
        return maxMult
    }

}
