//
//  sportCar.swift
//  Lesson-6
//
//  Created by Чернецова Юлия on 08/12/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import Foundation
class sportCar:Car,Comparable {
    
    var yearOfManufacture: Int
    var maxTrunkVolume: Double
    var mark: String
    var engineState: EngineState
    var windowState: WindowState
    
    let  countHorsePower: Int
    var  sportMode: SportMode
    
    
    
    
    //Для спорткара запрещено открывать окна в спортрежиме
    func changeCarState() {
        
        if (windowState == .open) && (sportMode == SportMode.turnOn)
        {
            print("Запрещается открывать окна в спорт режиме")}
    }
    
     static func == (lhs: sportCar, rhs: sportCar) -> Bool {
        return (lhs.mark == rhs.mark)&&(lhs.yearOfManufacture == rhs.yearOfManufacture)
    }
    
    static func >(lhs: sportCar, rhs: sportCar) -> Bool {
        return (lhs.yearOfManufacture > rhs.yearOfManufacture)
    }
    
    static func <(lhs: sportCar, rhs: sportCar) -> Bool {
        return (lhs.yearOfManufacture < rhs.yearOfManufacture)
    }
    //Функции поддержки прототокола Compatible
    
    init(yearOfManufacture: Int, maxTrunkVolume: Double, mark: String, engineState: EngineState, windowState: WindowState,countHorsePower:Int,sportMode:SportMode){
        self.countHorsePower = countHorsePower
        self.sportMode = sportMode
        
        self.yearOfManufacture = yearOfManufacture
        self.maxTrunkVolume = maxTrunkVolume
        self.mark = mark
        self.engineState = engineState
        self.windowState = windowState
        
    }
}
extension sportCar: CustomStringConvertible{  // имплементируем протокол для вывода в консоль
    var description: String{
        return """
        Марка: \(mark),
        лошадиных сил: \(countHorsePower),
        спорт режим :\(sportMode.rawValue),
        год выпуска: \(yearOfManufacture),
        максимальная грузоподъемность: \(maxTrunkVolume),
        состояние двигателя: \(engineState.rawValue),
        состояние окон: \(windowState.rawValue)
        """
    }
}
