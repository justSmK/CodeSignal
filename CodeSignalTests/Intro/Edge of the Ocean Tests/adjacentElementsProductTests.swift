//
//  adjacentElementsProductTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class AdjacentElementsProductTests: XCTestCase {
    
    var adjacentElementsProduct: AdjacentElementsProduct!

    override func setUpWithError() throws {
        try super.setUpWithError()
        adjacentElementsProduct = AdjacentElementsProduct()
    }

    override func tearDownWithError() throws {
        adjacentElementsProduct = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let inputArray = [3, 6, -2, -5, 7, 3]
        let expectedOutput = 21
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let inputArray = [-1, -2]
        let expectedOutput = 2
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let inputArray = [5, 1, 2, 3, 1, 4]
        let expectedOutput = 6
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let inputArray = [1, 2, 3, 0]
        let expectedOutput = 6
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let inputArray = [9, 5, 10, 2, 24, -1, -48]
        let expectedOutput = 50
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let inputArray = [5, 6, -4, 2, 3, 2, -23]
        let expectedOutput = 30
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_7() throws {
        let inputArray = [4, 1, 2, 3, 1, 5]
        let expectedOutput = 6
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_8() throws {
        let inputArray = [-23, 4, -3, 8, -12]
        let expectedOutput = -12
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_9() throws {
        let inputArray = [1, 0, 1, 0, 1000]
        let expectedOutput = 0
        
        let result = adjacentElementsProduct.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }

    func testPerformanceExample() throws {
        let inputArray = [3, 6, -2, -5, 7, 3]
        self.measure {
            _ = adjacentElementsProduct.solution(inputArray: inputArray)
        }
    }

}
