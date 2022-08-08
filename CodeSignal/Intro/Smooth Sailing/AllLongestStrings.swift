//
//  AllLongestStrings.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

class AllLongestStrings {
    func solution(inputArray: [String]) -> [String] {
        var resultArray = [String]()
        var maxLength = 0
        
        for element in inputArray {
            if element.count > maxLength {
                maxLength = element.count
            }
        }
        
//        inputArray.map { elem in
//            if elem.count > maxLength {
//                maxLength = elem.count
//            }
//        }
        
        for elem in inputArray {
            if elem.count == maxLength {
                resultArray.append(elem)
            }
        }
        
        return resultArray
        
    }
    
    func solution2(inputArray: [String]) -> [String] {
        let longest = inputArray.map{$0.utf8.count}.max()!
        return inputArray.filter{$0.utf8.count == longest}
    }
}
