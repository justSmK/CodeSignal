//
//  checkPalindromeTests.swift
//  CodeSignalTests
//
//  Created by justSmK on 8/8/22.
//

import XCTest

class checkPalindromeTests: XCTestCase {
    
    var checkPalindrome: CheckPalindrome!

    override func setUpWithError() throws {
        try super.setUpWithError()
        checkPalindrome = CheckPalindrome()
    }

    override func tearDownWithError() throws {
        checkPalindrome = nil
        try super.tearDownWithError()
    }

    func test_1() throws {
        let inputString = "aabaa"
        let expectedOutput = true
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_2() throws {
        let inputString = "abac"
        let expectedOutput = false
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_3() throws {
        let inputString = "a"
        let expectedOutput = true
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_4() throws {
        let inputString = "az"
        let expectedOutput = false
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_5() throws {
        let inputString = "abacaba"
        let expectedOutput = true
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_6() throws {
        let inputString = "z"
        let expectedOutput = true
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_7() throws {
        let inputString = "aaabaaaa"
        let expectedOutput = false
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_8() throws {
        let inputString = "zzzazzazz"
        let expectedOutput = false
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_9() throws {
        let inputString = "hlbeeykoqqqqokyeeblh"
        let expectedOutput = true
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }
    
    func test_10() throws {
        let inputString = "hlbeeykoqqqokyeeblh"
        let expectedOutput = true
        
        let result = checkPalindrome.solution(inputString: inputString)
        XCTAssertEqual(result, expectedOutput)
    }

    func testPerformanceExample() throws {
        let inputString = "aabaa"
        
        self.measure {
            _ = checkPalindrome.solution(inputString: inputString)
        }
    }

}
