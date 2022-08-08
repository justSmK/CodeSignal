//
//  AllLongestStringsTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class AllLongestStringsTests: XCTestCase {

    var allLongestStrings: AllLongestStrings!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        allLongestStrings = AllLongestStrings()
    }

    override func tearDownWithError() throws {
        allLongestStrings = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let inputArray = ["aba",
                          "aa",
                          "ad",
                          "vcd",
                          "aba"]
        let expectedOutput = ["aba",
                              "vcd",
                              "aba"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let inputArray = ["aa"]
        let expectedOutput = ["aa"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let inputArray = ["abc",
                          "eeee",
                          "abcd",
                          "dcd"]
        let expectedOutput = ["eeee",
                              "abcd"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let inputArray = ["a",
                          "abc",
                          "cbd",
                          "zzzzzz",
                          "a",
                          "abcdef",
                          "asasa",
                          "aaaaaa"]
        let expectedOutput = ["zzzzzz",
                              "abcdef",
                              "aaaaaa"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let inputArray = ["enyky",
                          "benyky",
                          "yely",
                          "varennyky"]
        let expectedOutput = ["varennyky"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let inputArray = ["abacaba",
                          "abacab",
                          "abac",
                          "xxxxxx"]
        let expectedOutput = ["abacaba"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_7() throws {
        let inputArray = ["young",
                          "yooooooung",
                          "hot",
                          "or",
                          "not",
                          "come",
                          "on",
                          "fire",
                          "water",
                          "watermelon"]
        let expectedOutput = ["yooooooung",
                              "watermelon"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_8() throws {
        let inputArray = ["onsfnib",
                          "aokbcwthc",
                          "jrfcw"]
        let expectedOutput = ["aokbcwthc"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_9() throws {
        let inputArray = ["lbgwyqkry"]
        let expectedOutput = ["lbgwyqkry"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_10() throws {
        let inputArray = ["i"]
        let expectedOutput = ["i"]
        
        let result = allLongestStrings.solution(inputArray: inputArray)
        XCTAssertEqual(result, expectedOutput)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
