//
//  Lession_5
//
//  Created by Egor Efimenko on 25.10.2021.
//

import Foundation

enum Transmission: String {
    case automatic = "Автомат"
    case mechanical = "Механика"
}

enum TypeOfCar: String {
    case sport = "Спорткар"
    case truck = "Грузовик"
}

enum DoorsStatus: String {
    case open = "Разблокированы"
    case closed = "Заблокированы"
}

enum WindowsStatus: String {
    case open = "Открыты"
    case closed = "Закрыты"
}

enum EngineStatus: String {
    case on = "Заведен"
    case off = "Заглушен"
}

enum TralerConnect: String {
    case connect = "Присоединен"
    case inconnect = "Отсоединен"
}

protocol CarProtocol {
    var name: String { get }
    var power: Int { get }
    var transmission: Transmission { get }
    var type: TypeOfCar { get }
    var doors: DoorsStatus { get set }
    var windows: WindowsStatus { get set }
    var engine: EngineStatus { get set }
}

protocol SportCarProtocol: CarProtocol {
    var maxSpeed: Int { get }
}

protocol TruckCarProtocol: CarProtocol {
    var traler: TralerConnect { get set }
}

extension CarProtocol {
    func carInfo() -> String {
        return ("\(type.rawValue) \(name) " +
                "Мощность \(power) л.с" +
                "\nКоробка передач \(transmission.rawValue)" +
                "\nОкна \(windows.rawValue), Двери \(doors.rawValue)" +
                "\nДвигатель \(engine.rawValue)")
    }
    mutating func statusWindows(_ status: WindowsStatus) {
        windows = status
        print("Окна \(name) \(status.rawValue)")
    }
    mutating func statusDoors(_ status: DoorsStatus) {
        doors = status
        print("Двери \(name) \(status.rawValue)")
    }
    mutating func statusEngine(_ status: EngineStatus) {
        engine = status
        print("Двигатель \(name) \(status.rawValue)")
    }
}

extension SportCarProtocol {
    func carInfo() -> String {
        return ("\(type.rawValue) \(name) " +
                "Мощность \(power) л.с" +
                "\nКоробка передач \(transmission.rawValue)" +
                "\nОкна \(windows.rawValue), Двери \(doors.rawValue)" +
                "\nДвигатель \(engine.rawValue)" + "\nМаксимальная скорость \(maxSpeed)")
    }
}
extension TruckCarProtocol {
    func carInfo() -> String {
        return ("\(type.rawValue) \(name) " +
                "Мощность \(power) л.с" +
                "\nКоробка передач \(transmission.rawValue)" +
                "\nОкна \(windows.rawValue), Двери \(doors.rawValue)" +
                "\nДвигатель \(engine.rawValue)" + "\nПрицеп \(traler.rawValue)")
    }
    mutating func statusTraler(_ status: TralerConnect) {
        traler = status
        print("Прицеп \(name) \(status.rawValue)")
    }
}

class SportCar: SportCarProtocol {
    var name: String
    var power: Int
    var maxSpeed: Int
    var transmission: Transmission
    var type: TypeOfCar
    var doors: DoorsStatus
    var windows: WindowsStatus
    var engine: EngineStatus
    
    init(
        name: String,
        power: Int,
        maxSpeed: Int,
        transmission: Transmission,
        type: TypeOfCar,
        doors: DoorsStatus,
        windows: WindowsStatus,
        engine: EngineStatus
    ) {
        self.name = name
        self.power = power
        self.maxSpeed = maxSpeed
        self.transmission = transmission
        self.type = type
        self.doors = doors
        self.windows = windows
        self.engine = engine
    }
    
}

class TruckCar: TruckCarProtocol {
    var name: String
    var power: Int
    var transmission: Transmission
    var type: TypeOfCar
    var doors: DoorsStatus
    var windows: WindowsStatus
    var engine: EngineStatus
    var traler: TralerConnect
    
    init(
        name: String,
        power: Int,
        transmission: Transmission,
        type: TypeOfCar,
        doors: DoorsStatus,
        windows: WindowsStatus,
        engine: EngineStatus,
        traler: TralerConnect
    ) {
        self.name = name
        self.power = power
        self.transmission = transmission
        self.type = type
        self.doors = doors
        self.windows = windows
        self.engine = engine
        self.traler = traler
    }
}

var bmw = SportCar(name: "BMW", power: 250, maxSpeed: 300, transmission: .mechanical, type: .sport, doors: .closed, windows: .closed, engine: .off)
var man = TruckCar(name: "MAN", power: 350, transmission: .automatic, type: .truck, doors: .closed, windows: .closed, engine: .off, traler: .connect)

bmw.statusEngine(.on)
man.statusEngine(.on)
print(man.carInfo())

