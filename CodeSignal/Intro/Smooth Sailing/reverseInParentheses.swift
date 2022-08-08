//
//  reverseInParentheses.swift
//  CodeSignal
//
//  Created by justSmK on 8/8/22.
//

import Foundation

//foo(bar(baz))blim

class ReverseInParentheses {
    func solution(inputString: String) -> String {
        var stack = [Character]()
        
        for str in inputString {
            if str == ")" {
                // as soon as we get a closing bracket, we start popping elements and saving into a new stack until we get an opening bracket
                // since we're following a stack, removing from a stack and adding into a new, it already reversed the elements for us
                var revStr = [Character]()
                while stack.last != "(" {
                    revStr.append(stack.removeLast())
                }
                // we're removing the last because it's an opening bracket and we don't need it anymore
                stack.removeLast()
                // simply adding the reversedString into our main stack
                stack += revStr
            } else {
                // appending everything else
                stack.append(str)
            }
        }
        
        return String(stack)
    }
    
}
