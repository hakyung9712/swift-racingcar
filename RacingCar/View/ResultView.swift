//
//  ResultView.swift
//  RacingCar
//
//  Created by hakyung on 2022/05/10.
//

import Foundation

class ResultView {
    static func printResult(_ car: Car) {
        print(String(repeating: "-", count: car.position))
    }
}
