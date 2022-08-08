//
//  commonCharacterCountTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class commonCharacterCountTests: XCTestCase {

    var commonCharacterCount: CommonCharacterCount!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        commonCharacterCount = CommonCharacterCount()
    }

    override func tearDownWithError() throws {
        commonCharacterCount = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let s1 = "aabcc"
        let s2 = "adcaa"
        let expectedOutput = 3
        
        let result = commonCharacterCount.solution(s1: s1, s2: s2)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = commonCharacterCount.solution2(s1: s1, s2: s2)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_2() throws {
        let s1 = "zzzz"
        let s2 = "zzzzzzz"
        let expectedOutput = 4
        
        let result = commonCharacterCount.solution(s1: s1, s2: s2)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = commonCharacterCount.solution2(s1: s1, s2: s2)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_3() throws {
        let s1 = "abca"
        let s2 = "xyzbac"
        let expectedOutput = 3
        
        let result = commonCharacterCount.solution(s1: s1, s2: s2)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = commonCharacterCount.solution2(s1: s1, s2: s2)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_4() throws {
        let s1 = "a"
        let s2 = "b"
        let expectedOutput = 0
        
        let result = commonCharacterCount.solution(s1: s1, s2: s2)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = commonCharacterCount.solution2(s1: s1, s2: s2)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_5() throws {
        let s1 = "a"
        let s2 = "aaa"
        let expectedOutput = 1
        
        let result = commonCharacterCount.solution(s1: s1, s2: s2)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = commonCharacterCount.solution2(s1: s1, s2: s2)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
}
