//
//  isLuckyTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class IsLuckyTests: XCTestCase {

    var isLucky: IsLucky!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        isLucky = IsLucky()
    }

    override func tearDownWithError() throws {
        isLucky = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let n = 1230
        let expectedOutput = true
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let n = 239017
        let expectedOutput = false
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let n = 134008
        let expectedOutput = true
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let n = 10
        let expectedOutput = false
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let n = 11
        let expectedOutput = true
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let n = 1010
        let expectedOutput = true
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_7() throws {
        let n = 261534
        let expectedOutput = false
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_8() throws {
        let n = 100000
        let expectedOutput = false
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_9() throws {
        let n = 999999
        let expectedOutput = true
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_10() throws {
        let n = 123321
        let expectedOutput = true
        
        let result = isLucky.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }

}
