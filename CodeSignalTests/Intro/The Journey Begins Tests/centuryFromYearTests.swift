//
//  centuryFromYearTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class CenturyFromYearTests: XCTestCase {
    
    var centuryFromYear: CenturyFromYear!

    override func setUpWithError() throws {
        try super.setUpWithError()
        centuryFromYear = CenturyFromYear()
    }

    override func tearDownWithError() throws {
        centuryFromYear = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let year = 1905
        let expectedOutput = 20
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let year = 1700
        let expectedOutput = 17
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let year = 1988
        let expectedOutput = 20
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let year = 2000
        let expectedOutput = 20
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let year = 2001
        let expectedOutput = 21
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let year = 200
        let expectedOutput = 2
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_7() throws {
        let year = 374
        let expectedOutput = 4
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_8() throws {
        let year = 45
        let expectedOutput = 1
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_9() throws {
        let year = 8
        let expectedOutput = 1
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }

    func testPerformanceExample() throws {
        let year = 1905
        self.measure {
            _ = centuryFromYear.solution(year: year)
        }
    }

}
