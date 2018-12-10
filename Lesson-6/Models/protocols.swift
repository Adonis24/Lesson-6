//
//  Protocols.swift
//  Lesson-6
//
//  Created by Чернецова Юлия on 08/12/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import Foundation
protocol Car {
//Свойства
var yearOfManufacture: Int {get set} // год выпуска
var maxTrunkVolume: Double {get set} // грузоподъемность
var mark: String {get set} // Марка
var engineState: EngineState {get set}
var windowState: WindowState {get set}

//Действие
func changeCarState()


}


// Расширения протокола - методы вкл/выкл двигатель; открыть/закрыть двери
extension Car{
    
    var engineState: EngineState{
        get {return engineState}
        set {engineState = newValue}
    }
    //    mutating func turnOnEngine(){
    //
    //        engineState =  EngineState.on
    //    }
    
    mutating func turnOffEngine(){
        engineState =  EngineState.off
    }
    
    mutating func openWindow(){
        windowState =  WindowState.open
    }
    
    mutating func closeWindow(){
        windowState =  WindowState.close
    }
}
