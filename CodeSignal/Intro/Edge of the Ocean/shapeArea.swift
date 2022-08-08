//
//  shapeArea.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class ShapeArea {
    func solution(n: Int) -> Int {
        return Int(pow(Double(n) - 1, 2) + pow(Double(n), 2))
    }
}
