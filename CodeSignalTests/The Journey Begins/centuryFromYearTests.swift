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

    func testOne() throws {
        let year = 1905
        let expectedOutput = 20
        
        let result = centuryFromYear.solution(year: year)
        XCTAssertEqual(result, expectedOutput)
    }

    func testPerformanceExample() throws {
        let year = 1905
        self.measure {
            centuryFromYear.solution(year: year)
        }
    }

}
