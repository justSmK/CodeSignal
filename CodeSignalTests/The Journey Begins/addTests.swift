//
//  addTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest
//@testable import CodeSignal


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

    func testOne() throws {
        let p1 = 1
        let p2 = 2
        let expectedOutput = 3
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func testTwo() throws {
        let p1 = 0
        let p2 = 1000
        let expectedOutput = 1000
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func testThree() throws {
        let p1 = 2
        let p2 = -39
        let expectedOutput = -37
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func testFour() throws {
        let p1 = 99
        let p2 = 100
        let expectedOutput = 199
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func testFive() throws {
        let p1 = -100
        let p2 = 100
        let expectedOutput = 0
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func testSix() throws {
        let p1 = -1000
        let p2 = -1000
        let expectedOutput = -2000
        
        let result = add.solution(param1: p1, param2: p2)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func testPerformanceExample() throws {
        let p1 = 1
        let p2 = 2
        
        measure {
            add.solution(param1: p1, param2: p2)
        }
    }

}
