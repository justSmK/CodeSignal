//
//  MakeArrayConsecutive2Tests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class MakeArrayConsecutive2Tests: XCTestCase {
    
    var makeArrayConsecutive2: MakeArrayConsecutive2!

    override func setUpWithError() throws {
        try super.setUpWithError()
        makeArrayConsecutive2 = MakeArrayConsecutive2()
    }

    override func tearDownWithError() throws {
        makeArrayConsecutive2 = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let statues = [6, 2, 3, 8]
        let expectedOutput = 3
        
        let result = makeArrayConsecutive2.solution(statues: statues)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let statues = [0, 3]
        let expectedOutput = 2
        
        let result = makeArrayConsecutive2.solution(statues: statues)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let statues = [5, 4, 6]
        let expectedOutput = 0
        
        let result = makeArrayConsecutive2.solution(statues: statues)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let statues = [6, 3]
        let expectedOutput = 2
        
        let result = makeArrayConsecutive2.solution(statues: statues)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let statues = [1]
        let expectedOutput = 0
        
        let result = makeArrayConsecutive2.solution(statues: statues)
        XCTAssertEqual(result, expectedOutput)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
