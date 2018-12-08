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
}
