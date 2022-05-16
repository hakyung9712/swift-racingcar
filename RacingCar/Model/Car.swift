//
//  Car.swift
//  RacingCar
//
//  Created by hakyung on 2022/05/12.
//

import Foundation

class Car {
    var position: Int
    
    init(position: Int = 0) {
        self.position = position
    }
    
    func move() {
        self.position += 1
    }
}
