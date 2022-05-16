//
//  InputView.swift
//  RacingCar
//
//  Created by hakyung on 2022/05/10.
//

import Foundation

class InputView {
    static func inputReadLine() throws -> Int {
        if let input: String = readLine(),
           let inputNumber: Int = Int(input) {
            return inputNumber
        }
        throw RacingCarError.inputError
    }
}
