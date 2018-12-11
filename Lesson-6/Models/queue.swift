//
//  queue.swift
//  Lesson-6
//
//  Created by Чернецова Юлия on 08/12/2018.
//  Copyright © 2018 Чернецов Роман. All rights reserved.
//

import Foundation

struct Queue<Cars:Comparable> {
    //массив объектов из экземпляров машин
     var elements: [Cars] = []
    
    //очередь работает по методу FIFO
    //добавление в очередь
    mutating func push(element:Cars)  {
        elements.append(element)
    }
    
    // извлечение из очереди
    mutating func pop()->Cars?{
        return elements.removeFirst()
    }
  // поиск по индексу
   mutating func findIndex( valueToFind: Cars, in array: [Cars]) -> Int? {
        for (index, value) in array.enumerated() {
            if value == valueToFind {
                return index
            }
        }
        return nil
    }

    
    //Определение самого последнего элемента
func topElement(){
       var topItem: Cars?
        {
            return elements.isEmpty ? nil : elements[elements.count - 1]
        }

}
    
   
    subscript (index: Int) -> Cars? {
    if index < self.elements.count {
        
     return self.elements[index]
     } else {
    return nil
    }
}
}



