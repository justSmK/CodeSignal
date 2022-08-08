//
//  SortByHeightTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class SortByHeightTests: XCTestCase {
    
    var sortByHeight: SortByHeight!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sortByHeight = SortByHeight()
    }

    override func tearDownWithError() throws {
        sortByHeight = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let a = [-1, 150, 190, 170, -1, -1, 160, 180]
        let expectedOutput = [-1, 150, 160, 170, -1, -1, 180, 190]
        
        let result = sortByHeight.solution(a: a)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = sortByHeight.solution2(a: a)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_2() throws {
        let a = [-1, -1, -1, -1, -1]
        let expectedOutput = [-1, -1, -1, -1, -1]
        
        let result = sortByHeight.solution(a: a)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = sortByHeight.solution2(a: a)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_3() throws {
        let a = [-1]
        let expectedOutput = [-1]
        
        let result = sortByHeight.solution(a: a)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = sortByHeight.solution2(a: a)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_4() throws {
        let a = [4, 2, 9, 11, 2, 16]
        let expectedOutput = [2, 2, 4, 9, 11, 16]
        
        let result = sortByHeight.solution(a: a)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = sortByHeight.solution2(a: a)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_5() throws {
        let a = [2, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1]
        let expectedOutput = [1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 2]
        
        let result = sortByHeight.solution(a: a)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = sortByHeight.solution2(a: a)
        XCTAssertEqual(resultSol2, expectedOutput)
    }
    
    func test_6() throws {
        let a = [23, 54, -1, 43, 1, -1, -1, 77, -1, -1, -1, 3]
        let expectedOutput = [1, 3, -1, 23, 43, -1, -1, 54, -1, -1, -1, 77]
        
        let result = sortByHeight.solution(a: a)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol2 = sortByHeight.solution2(a: a)
        XCTAssertEqual(resultSol2, expectedOutput)
    }

}
