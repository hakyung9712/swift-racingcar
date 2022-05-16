//
//  Racing.swift
//  RacingCar
//
//  Created by hakyung on 2022/05/12.
//

import Foundation

class Racing {
    private let cars: [Car]
    private let gameCount: Int
    
    init(carCount: Int, gameCount: Int) throws {
        guard carCount >= 0 else { return RacingCarError.inputError }
        guard gameCount >= 0 else { return RacingCarError.inputError }
        
        self.cars = Array(repeating: Car(), count: carCount)
        self.gameCount = gameCount
    }
    
    func runOnce(_ car: Car) throws Error {
        if let randomNumber = try? RacingCondition.getRandomNumber() {
            for _ in 0..<randomNumber {
                car.move()
            }
        } else error as RacingCarError {
    
        }
    }
    
    func runOneCycle(of cars: [Car]) {
        for car in cars {
            runOnce(car)
            ResultView.printResult(car)
        }
        print("")
    }
    
    func run() {
        print("\n실행 결과")
        
        for _ in 0..<gameCount {
            runOneCycle(of: cars)
        }
    }
}
