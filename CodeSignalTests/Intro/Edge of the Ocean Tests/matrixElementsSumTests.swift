//
//  matrixElementsSumTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class MatrixElementsSumTests: XCTestCase {
    
    var matrixElementsSum: MatrixElementsSum!

    override func setUpWithError() throws {
        try super.setUpWithError()
        matrixElementsSum = MatrixElementsSum()
    }

    override func tearDownWithError() throws {
        matrixElementsSum = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let matrix = [[0,1,1,2],
                      [0,5,0,0],
                      [2,0,3,3]]
        let expectedOutput = 9
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_2() throws {
        let matrix = [[1,1,1,0],
                      [0,5,0,1],
                      [2,1,3,10]]
        let expectedOutput = 9
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_3() throws {
        let matrix = [[1,1,1],
                      [2,2,2],
                      [3,3,3]]
        let expectedOutput = 18
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_4() throws {
        let matrix = [[0]]
        let expectedOutput = 0
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_5() throws {
        let matrix = [[1,0,3],
                      [0,2,1],
                      [1,2,0]]
        let expectedOutput = 5
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_6() throws {
        let matrix = [[1],
                      [5],
                      [0],
                      [2]]
        let expectedOutput = 6
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_7() throws {
        let matrix = [[1,2,3,4,5]]
        let expectedOutput = 15
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_8() throws {
        let matrix = [[2],
                      [5],
                      [10]]
        let expectedOutput = 17
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_9() throws {
        let matrix = [[4,0,1],
                      [10,7,0],
                      [0,0,0],
                      [9,1,2]]
        let expectedOutput = 15
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }
    
    func test_10() throws {
        let matrix = [[1]]
        let expectedOutput = 1
        
        let result = matrixElementsSum.mySolution(matrix: matrix)
        XCTAssertEqual(result, expectedOutput)
        
        let resultSol = matrixElementsSum.solution(matrix: matrix)
        XCTAssertEqual(resultSol, expectedOutput)
    }

}
