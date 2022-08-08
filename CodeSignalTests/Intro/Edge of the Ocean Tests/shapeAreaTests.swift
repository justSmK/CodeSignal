//
//  shapeAreaTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class ShapeAreaTests: XCTestCase {
    
    var shapeArea: ShapeArea!

    override func setUpWithError() throws {
        try super.setUpWithError()
        shapeArea = ShapeArea()
    }

    override func tearDownWithError() throws {
        shapeArea = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let n = 2
        let expectedOutput = 5
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let n = 3
        let expectedOutput = 13
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let n = 1
        let expectedOutput = 1
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let n = 5
        let expectedOutput = 41
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let n = 7000
        let expectedOutput = 97986001
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let n = 8000
        let expectedOutput = 127984001
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_7() throws {
        let n = 9999
        let expectedOutput = 199940005
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_8() throws {
        let n = 9998
        let expectedOutput = 199900013
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_9() throws {
        let n = 8999
        let expectedOutput = 161946005
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_10() throws {
        let n = 100
        let expectedOutput = 19801
        
        let result = shapeArea.solution(n: n)
        XCTAssertEqual(result, expectedOutput)
    }

    func testPerformanceExample() throws {
        let n = 999_999_999
        
        self.measure {
            _ = shapeArea.solution(n: n)
        }
    }

}
