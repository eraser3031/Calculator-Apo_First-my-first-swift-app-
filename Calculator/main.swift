//
//  main.swift
//  Calculator
//
//  Created by Kimyaehoon on 24/05/2020.
//  Copyright © 2020 Kimyaehoon. All rights reserved.
//

import Foundation

class Player{
    var leftValue:Int = 0
    var rightValue:Int = 0
    var middleValue:String = ""
    
    func rememberValue(order:String){
        let temporaryValue = readLine()
        if let value = temporaryValue, let intValue = Int(value) {
            switch order {
            case "left":
                leftValue = intValue
            default:
                rightValue = intValue
            }
        }
    }
    
    func rememberCal(){
        let temporaryValue = readLine()
        if let value = temporaryValue {
            middleValue = value
        }
    }
}

class Cal{
    func calcutate(left:Int, right:Int, middle:String) -> Int{
        switch middle {
        case "plus":
            return left + right
        case "minus":
            return left - right
        case "mutiply":
            return left * right
        case "sub":
            return left / right
        default:
            return 0
        }
    }
}

//play.
        var player:Player = Player()
        var cal:Cal = Cal()
        // 첫번째 숫자 받기
        print("숫자를 입력해주세요")
        player.rememberValue(order: "left")

        while true{
        //연산자 받기
        print("연산자를 입력해주세요. (plus, minus, mutiply, sub 지원)")
        player.rememberCal()

        // 두번째 숫자 받기
        print("숫자를 입력해주세요")
        player.rememberValue(order: "right")

        // 계산하기

        let answer = cal.calcutate(left: player.leftValue, right: player.rightValue, middle:player.middleValue)

        print("값은 \(answer)입니다!")

        player.leftValue = answer
            
        print("또다른 연산을 하시려면 연산자를 입력해주세요!")
        }
