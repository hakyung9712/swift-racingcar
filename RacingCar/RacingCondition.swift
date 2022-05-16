//
//  GameCondition.swift
//  RacingCar
//
//  Created by hakyung on 2022/05/12.
//

import Foundation

class RacingCondition {
    static func getRandomNumber() throws ->  Int {
        let randomNumber = Int.random(in: 0..<10)
        
        if checkValidNumber(number: randomNumber) {
            return randomNumber
        }
        
        throw RacingCarError.invalidNumError
    }
    
    static func checkValidNumber(number: Int) -> Bool {
        return number >= 4
    }
}
