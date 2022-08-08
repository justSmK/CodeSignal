//
//  matrixElementsSum.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class MatrixElementsSum {
    func mySolution(matrix: [[Int]]) -> Int {
        var sum = 0
        var check = Array(repeating: 1, count: matrix[0].count)
        
        for i in 0..<matrix.count {
            for j in 0..<matrix[i].count {
                if matrix[i][j] == 0 {
                    check[j] = 0
                }
                if check[j] != 0 {
                    sum += matrix[i][j]
                }
            }
        }
        
        return sum
    }
    
    func solution(matrix: [[Int]]) -> Int {
        var total = 0
        for i in 0..<matrix[0].count {
            for j in 0..<matrix.count {
                let room = matrix[j][i]
                guard room != 0  else { break }
                total += room
            }
        }
        return total
    }
}
