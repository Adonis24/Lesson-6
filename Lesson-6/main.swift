//
//  main.swift
//  Lesson-6
//
//  Created by Чернецова Юлия on 08/12/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import Foundation

var car1 = trunkCar(yearOfManufacture: 2012, maxTrunkVolume: 30_000.0, mark: "Man", engineState: EngineState.off, windowState: WindowState.close, heightWork: 250, trunMode: TrunkMode.light, carrying: 2_000.0)
var car2 = trunkCar(yearOfManufacture: 2010, maxTrunkVolume: 35_000.0, mark: "Kamaz", engineState: EngineState.off, windowState: WindowState.close, heightWork: 250, trunMode: TrunkMode.light, carrying: 2_000.0)


//var car3 = sportCar(yearOfManufacture: 2014, maxTrunkVolume: 200.0, mark: "Opel", engineState: EngineState.on, windowState: WindowState.open, countHorsePower: 250, sportMode: SportMode.turnOff)

//Closure - Increase year and Decrease
let sortYearDec: (trunkCar,trunkCar) -> Bool = {(leftCar: trunkCar, rightCar: trunkCar) -> Bool in return leftCar >= rightCar}
let sortYearInc: (trunkCar,trunkCar) -> Bool = {(leftCar: trunkCar, rightCar: trunkCar) -> Bool in return leftCar < rightCar}
//\\Closure - Increase year and Decrease

var queue = Queue<trunkCar>()
queue.push(element: car1)
queue.push(element: car2)
print(queue)
print("\n")
print("Сортировка")
queue.elements.sort(by:sortYearInc)
print(queue)


// subscript
print("\n")
print("subscript")
let test = queue[1] // queue[2] - nil
if test != nil {
    print(test!)
}
    else{
    print("Значение за пределом очереди, nil")
}








