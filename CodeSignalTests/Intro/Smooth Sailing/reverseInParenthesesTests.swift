//
//  reverseInParenthesesTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class ReverseInParenthesesTests: XCTestCase {
    
    var reverseInParentheses: ReverseInParentheses!

    override func setUpWithError() throws {
        try super.setUpWithError()
        reverseInParentheses = ReverseInParentheses()
    }

    override func tearDownWithError() throws {
        reverseInParentheses = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let inputString = "(bar)"
        let expectedOutput = "rab"
        
        let result = reverseInParentheses.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let inputString = "foo(bar)baz"
        let expectedOutput = "foorabbaz"
        
        let result = reverseInParentheses.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let inputString = "foo(bar)baz(blim)"
        let expectedOutput = "foorabbazmilb"
        
        let result = reverseInParentheses.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let inputString = "foo(bar(baz))blim"
        let expectedOutput = "foobazrabblim"
        
        let result = reverseInParentheses.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let inputString = ""
        let expectedOutput = ""
        
        let result = reverseInParentheses.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let inputString = "()"
        let expectedOutput = ""
        
        let result = reverseInParentheses.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_7() throws {
        let inputString = "(abc)d(efg)"
        let expectedOutput = "cbadgfe"
        
        let result = reverseInParentheses.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }

}
