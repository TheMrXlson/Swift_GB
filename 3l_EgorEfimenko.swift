//
//  main.swift
//  Lession_3
//
//  Created by Egor Efimenko on 20.10.2021.
//

import Foundation

enum EngineState {
    case start, stop
}

enum AreWindowsOpen {
    case open, close
}

func carStatus(_ car: SportCar) {
    print("\(car.name) \(car.color) цвета")
    print("Год выпуска \(car.year)")
    print ("Объем багажника \(car.capacity) литров")
    if car.engineOn == true {
        print("Двигатель заведен")
    } else {
        print("Двигатель выключен")
    }
    if car.windowsOpen == true {
        print("Окна открыты")
    } else {
        print("Окна закрыты")
    }
    if car.usedCapacity == car.capacity {
        print("Багажник полный")
    } else if car.usedCapacity == 0 {
        print("Багажник пустой")
    } else {
        print("Использованное пространство \(car.usedCapacity) литров")
    }
}

func carStatus(_ car: TruckCar) {
    print("\(car.name) \(car.color) цвета")
    print("Год выпуска \(car.year)")
    print ("Объем багажника \(car.capacity) литров")
    if car.engineOn == true {
        print("Двигатель заведен")
    } else {
        print("Двигатель выключен")
    }
    if car.windowsOpen == true {
        print("Окна открыты")
    } else {
        print("Окна закрыты")
    }
    if car.usedCapacity == car.capacity {
        print("Багажник полный")
    } else if car.usedCapacity == 0 {
        print("Багажник пустой")
    } else {
        print("Использованное пространство \(car.usedCapacity) литров")
    }
}

struct SportCar {
    let name: String
    var color : String
    let year: Int
    let capacity: Int
    var engineOn: Bool
    var windowsOpen: Bool
    var usedCapacity: Int
    
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "red":
            self.color = "red"
        case "blue":
            self.color = "blue"
        default:
            print("Input error.")
        }
    }
    
    mutating func engine(status :EngineState) {
        switch status {
        case .start:
            self.engineOn = true
            print("Двигатель \(name) заведен")
        case .stop:
            self.engineOn = false
            print("Двигатель \(name) заглушен")
        }
    }
    
    mutating func windows(status :AreWindowsOpen) {
        switch status {
        case .open:
            self.windowsOpen = true
            print("Окна открыты")
        case .close:
            self.windowsOpen = false
            print("Окна закрыты")
        }
    }
    mutating func load(_ load: Int) {
        guard load <= capacity && -load <= usedCapacity && load + usedCapacity <= 200 else {
            if load > 0{
                print("Невозможно загрузить \(load) литров в \(name), уже в багажнике \(usedCapacity) литров при максимальном объеме \(capacity) литров")
            } else {
                print("Невозможно выгрузить \(-load) литров из \(name), так как в багажнике всего \(usedCapacity) литров")
            }
            return
        }
        self.usedCapacity += load
        if load > 0{
            print("Загружено \(load) литров в \(name)")
        } else if load < 0 {
            print("Выгружено \(load) литров из \(name)")
        } else {
            print("Объем без изменений  в \(name)")
        }
    }
}

struct TruckCar {
    let name: String
    var color : String
    let year: Int
    let capacity: Int
    var engineOn: Bool
    var windowsOpen: Bool
    var usedCapacity: Int
    
    mutating func changeColor(c:String) {
        switch c {
        case "white":
            self.color = "white"
        case "black":
            self.color = "black"
        case "red":
            self.color = "red"
        case "blue":
            self.color = "blue"
        default:
            print("Input error.")
        }
    }
    
    mutating func engine(status :EngineState) {
        switch status {
        case .start:
            self.engineOn = true
            print("Двигатель \(name) заведен")
        case .stop:
            self.engineOn = false
            print("Двигатель \(name) заглушен")
        }
    }
    
    mutating func windows(status :AreWindowsOpen) {
        switch status {
        case .open:
            self.windowsOpen = true
            print("Окна открыты")
        case .close:
            self.windowsOpen = false
            print("Окна закрыты")
        }
    }
    mutating func load(_ load: Int) {
        guard load <= capacity && -load <= usedCapacity && load + usedCapacity <= 200 else {
            if load > 0{
                print("Невозможно загрузить \(load) литров в \(name), уже в багажнике \(usedCapacity) литров при максимальном объеме \(capacity) литров")
            } else {
                print("Невозможно выгрузить \(-load) литров из \(name), так как в багажнике всего \(usedCapacity) литров")
            }
            return
        }
        self.usedCapacity += load
        if load > 0{
            print("Загружено \(load) литров в \(name)")
        } else if load < 0 {
            print("Выгружено \(load) литров из \(name)")
        } else {
            print("Объем без изменений  в \(name)")
        }
    }
}

var car1 = SportCar(name: "Mazda", color: "white", year: 2018, capacity: 200, engineOn: false, windowsOpen: false, usedCapacity: 0)
var car2 = TruckCar(name: "Man", color: "white", year: 2010, capacity: 1000, engineOn: false, windowsOpen: false, usedCapacity: 0)

car1.windows(status: .open)
car2.engine(status: .start)
car1.load(5)
car2.load(-6)
car1.load(190)
carStatus(car1)
carStatus(car2)

