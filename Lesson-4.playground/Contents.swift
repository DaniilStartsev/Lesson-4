import UIKit

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.


enum Transmission {
    case manual
    case auto
}
enum CarDoor {
    case open
    case close
}


class Car {
    var color: UIColor
    var model: String
    var transmission: Transmission
    var door: CarDoor
    init(color: UIColor, model: String, transmission: Transmission, door: CarDoor) {
        self.color = color
        self.model = model
        self.transmission = transmission
        self.door = door
    }
}

enum FuelType {
    case petrol
    case disel
}

class TrunkCar: Car {
    var fuelType: FuelType
    init(color: UIColor, model: String, transmission: Transmission, door: CarDoor, fuelType: FuelType) {
        self.fuelType = fuelType
        super.init(color: color, model: model, transmission: transmission, door: door)
    }
    func pelrolFuel() {
        fuelType = .petrol
    }
    func diselFuel() {
        fuelType = .disel
    }
    func printTrunkCar() {
        print("Цвет:\(color), Модель:\(model), Тип трансмиссии:\(transmission), Состояние дверей:\(door), Тип топлива:\(fuelType)")
    }
}

enum BodyType {
    case sedan
    case coupe
}

class SportCar: Car {
    var bodyType: BodyType
    init(color: UIColor, model: String, transmission: Transmission, door: CarDoor, bodyType: BodyType) {
        self.bodyType = bodyType
        super.init(color: color, model: model, transmission: transmission, door: door)
    }
    
    func sedanBody() {
        bodyType = .sedan
    }
    func coupeBody() {
        bodyType = .coupe
    }
    func printSportCar () {
        print("Цвет:\(color), Модель:\(model), Тип трансмиссии:\(transmission), Состояние дверей:\(door), Тип кузова:\(bodyType)")
    }
}

var trunkcar = TrunkCar(color: .black, model: "FOTON", transmission: .manual, door: .open, fuelType: .disel)

var sportCar = SportCar(color: .green, model: "Porsche", transmission: .auto, door: .close, bodyType: .coupe)

trunkcar.pelrolFuel()
trunkcar.fuelType
sportCar.sedanBody()
sportCar.bodyType

trunkcar.printTrunkCar()
sportCar.printSportCar()
