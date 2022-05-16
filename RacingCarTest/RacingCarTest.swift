//
//  RacingCarTest.swift
//  RacingCarTest
//
//  Created by hakyung on 2022/05/16.
//

import XCTest
@testable import RacingCar

class RacingCarTest: XCTestCase {
    func testValidNumber() throws {
//        XCTAssertThrowsError(try RacingCondition.checkValidNumber(number: 9)) { result in
//            XCTAssertEqual(result as! RacingCarError, RacingCarError.invalidNumError)
//        }
        
        XCTAssertEqual(RacingCondition.checkValidNumber(number: 3), false)
    }
    
    func testValidInput() throws {
        XCTAssertEqual(try Racing.init(carCount: 0, gameCount: 1), RacingCarError.inputError)
    }
    
    

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
