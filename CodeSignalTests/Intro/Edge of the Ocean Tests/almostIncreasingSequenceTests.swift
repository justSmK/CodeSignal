//
//  almostIncreasingSequenceTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class AlmostIncreasingSequenceTests: XCTestCase {
    
    var almostIncreasingSequence: AlmostIncreasingSequence!

    override func setUpWithError() throws {
        try super.setUpWithError()
        almostIncreasingSequence = AlmostIncreasingSequence()
    }

    override func tearDownWithError() throws {
        almostIncreasingSequence = nil
        try super.tearDownWithError()
    }
    
    func test_isStrictlyIncreasing_1() throws {
        let sequence = [1, 2, 3, 4]
        let result = almostIncreasingSequence.isStrictlyIncreasing(array: sequence)
        XCTAssertTrue(result)
    }
    
    func test_isStrictlyIncreasing_2() throws {
        let sequence = [6, 2, 3, 4]
        let result = almostIncreasingSequence.isStrictlyIncreasing(array: sequence)
        XCTAssertFalse(result)
    }

    func test_1() throws {
        let sequence = [1, 3, 2, 1]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let sequence = [1, 3, 2]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let sequence = [1, 2, 1, 2]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let sequence = [3, 6, 5, 8, 10, 20, 15]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let sequence = [1, 1, 2, 3, 4, 4]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let sequence = [1, 4, 10, 4, 2]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_7() throws {
        let sequence = [10, 1, 2, 3, 4, 5]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_8() throws {
        let sequence = [1, 1, 1, 2, 3]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_9() throws {
        let sequence = [0, -2, 5, 6]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_10() throws {
        let sequence = [1, 2, 3, 4, 5, 3, 5, 6]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_11() throws {
        let sequence = [40, 50, 60, 10, 20, 30]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_12() throws {
        let sequence = [1, 1]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_13() throws {
        let sequence = [1, 2, 5, 3, 5]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_14() throws {
        let sequence = [1, 2, 5, 5, 5]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_15() throws {
        let sequence = [10, 1, 2, 3, 4, 5, 6, 1]
        let expectedOutput = false
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_16() throws {
        let sequence = [1, 2, 3, 4, 3, 6]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_17() throws {
        let sequence = [1, 2, 3, 4, 99, 5, 6]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_18() throws {
        let sequence = [123, -17, -5, 1, 2, 3, 12, 43, 45]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_19() throws {
        let sequence = [3, 5, 67, 98, 3]
        let expectedOutput = true
        
        let result = almostIncreasingSequence.solution(sequence: sequence)
        XCTAssertEqual(result, expectedOutput)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
