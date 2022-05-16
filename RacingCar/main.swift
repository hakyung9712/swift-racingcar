//
//  RacingCar - main.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import Foundation

/*
 값을 입력받는 함수 readline
 print함수의 terminator 변수를 활용하면 출력과 입력을 한 줄에 모두 할 수 있습니다.
 if let input: String = readLine(),
     let inputNumber = Int(input) {
       //...
 }
 
 모든 로직에 단위 테스트를 구현합니다. 단, UI(print, readLine) 로직은 제외합니다.
 핵심 로직을 구현하는 코드와 UI를 담당하는 로직을 구분합니다.
 UI 로직을 InputView, ResultView와 같은 별도의 타입으로 분리하여 구현합니다.
 Code Coverage를 통해 모든 로직을 테스트했는지 확인할 수 있습니다.
 
 초간단 자동차 경주 게임을 구현합니다.

 주어진 횟수 동안 n대의 자동차는 전진 또는 멈출 수 있습니다.
 사용자는 몇 대의 자동차로 몇 번의 이동을 할 것인지를 입력할 수 있어야 합니다.
 전진하는 조건은 0에서 9 사이에서 무작위 값을 구한 후 무작위 값이 4 이상일 경우입니다.
 자동차의 상태를 화면에 출력합니다. 어느 시점에 출력할 것인지에 대한 제약은 없습니다.
 
 자동차 대수는 몇 대인가요? 3
 시도할 횟수는 몇 회인가요? 5

 실행 결과
 -
 -
 -

 --
 -
 --

 ---
 --
 ---

 ----
 ---
 ----

 ----
 ----
 -----

 
 */
do {
    print("자동차 대수는 몇 대인가요?", terminator: "")
    let carCount = try InputView.inputReadLine()
    
    print("시도할 횟수는 몇 회인가요?", terminator: "")
    let gameCount = try InputView.inputReadLine()
    
    let game = Racing(carCount: carCount, gameCount: gameCount)
    game.run()
} catch let error as RacingCarError{
    print(error.errorDescription)
}
