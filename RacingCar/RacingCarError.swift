//
//  RacingCarError.swift
//  RacingCar
//
//  Created by hakyung on 2022/05/12.
//

import Foundation

enum RacingCarError: Error{
    case inputError
    case invalidNumError
    
    var errorDescription: String {
        switch self {
        case .inputError:
            return "입력 오류입니다."
        case .invalidNumError:
            return "범위를 벗어난 숫자입니다."
        }
    }
}
