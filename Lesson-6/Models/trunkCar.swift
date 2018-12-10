//
//  trunkCar.swift
//  Lesson-6
//
//  Created by Чернецова Юлия on 08/12/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import Foundation
//Создаем класс грузовой автомобиль
class trunkCar:Car,Equatable{
 
    //общие свойства
    var yearOfManufacture: Int
    var maxTrunkVolume: Double
    var mark: String
    var engineState: EngineState
    var windowState: WindowState
    //специфические свойства
    let  heightWork:Int // высота кузова
    var  trunMode: TrunkMode //Текущий режим грузоподъемности
    var  carrying:Double //Текущий вес груза
    {
        didSet {
            print("Загрузили \(carrying) кг.")
        }
    }
    //реальная номинальная грузоподъемность
    
    func changeCarState(){
        if carrying>=0.0 && carrying<=2500.0 {
            trunMode = TrunkMode.light}
        else if carrying>2500.0 && carrying<=10000.0 {
            trunMode = TrunkMode.midle
        }
        else if carrying>10000.0 {
            trunMode = TrunkMode.hard
        }
        print("\(trunMode.rawValue)")
    }
    //Функции поддержки прототокола Compatible
   static func ==(lhs: trunkCar, rhs: trunkCar) -> Bool {
        return (lhs.mark == rhs.mark)&&(lhs.yearOfManufacture == rhs.yearOfManufacture)
    }
//    static func >(lhs: trunkCar, rhs: trunkCar) -> Bool {
//        return (lhs.yearOfManufacture > rhs.yearOfManufacture)
//    }
//    
//    static func <(lhs: trunkCar, rhs: trunkCar) -> Bool {
//        return (lhs.yearOfManufacture < rhs.yearOfManufacture)
//    }
       //Функции поддержки прототокола Compatible
    
    init(yearOfManufacture: Int, maxTrunkVolume: Double, mark: String, engineState: EngineState, windowState: WindowState,heightWork:Int,trunMode:TrunkMode,carrying:Double){
        self.heightWork = heightWork
        self.trunMode = trunMode
        self.carrying = carrying
        
        self.yearOfManufacture = yearOfManufacture
        self.maxTrunkVolume = maxTrunkVolume
        self.mark = mark
        self.engineState = engineState
        self.windowState = windowState
        
    }
}
extension trunkCar: CustomStringConvertible{  // имплементируем протокол для вывода в консоль
    var description: String{
        return """
        Марка: \(mark),
        высота кузова: \(heightWork),
        режим грузоподъемности:\(trunMode.rawValue),
        текущий вес груза: \(carrying),
        год выпуска: \(yearOfManufacture),
        максимальная грузоподъемность: \(maxTrunkVolume),
        состояние двигателя: \(engineState.rawValue),
        состояние окон: \(windowState.rawValue)
        """ // определяем, что именно будет выводиться
    }
    
}
