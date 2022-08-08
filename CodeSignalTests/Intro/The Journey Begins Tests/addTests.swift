//
//  addTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class AddTests: XCTestCase {

    var add: Add!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        add = Add()
    }

    override func tearDownWithError() throws {
        add = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let p1 = 1
        let p2 = 2
        let expectedOutput = 3
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let p1 = 0
        let p2 = 1000
        let expectedOutput = 1000
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let p1 = 2
        let p2 = -39
        let expectedOutput = -37
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let p1 = 99
        let p2 = 100
        let expectedOutput = 199
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let p1 = -100
        let p2 = 100
        let expectedOutput = 0
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let p1 = -1000
        let p2 = -1000
        let expectedOutput = -2000
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }

}
