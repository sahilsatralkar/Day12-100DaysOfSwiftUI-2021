import UIKit

var greeting = "Hello, playground"


//Classes
//1. Class inheritance
//2. Swift wont create initialisers
//3. Deinitializer
//4. Copies of structs are unique but copies of classes point to the same data


class Employee {
    let hours : Int
    
    init(hours : Int) {
        self.hours = hours
    }
    func printSummary(){
        print("I am working \(hours) hours a day.")
    }
}

class Developer : Employee {
    func work() {
        print("I am working \(hours)")
    }
    override func printSummary() {
        print("Hey hey hey i ma just overriding coz i am a developer! :P ")
    }
}
final class Manager : Employee {
    func work() {
        print("I am doing nothing for \(hours)")
    }
}

//initializers
class Vehicle {
    var isElectric : Bool
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    var isConvertible : Bool
    init(isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: false)
    }
    
}

let myCar = Car(isConvertible: true)
print(myCar.isElectric)
print(myCar.isConvertible)


//Copy class
let newCar = myCar
print(newCar.isElectric)
print(newCar.isConvertible)
newCar.isElectric = true
print(myCar.isElectric)

//Deinitialisers
class User {
    var id: Int
    init(id: Int) {
        self.id = id
        print("User \(id) is alive")
    }
    deinit {
        print("User \(id) is dead")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id) : I am in control")
    users.append(user)
}

print("Loop is finished")
users.removeAll()
print("Array is clear!")

//Checkpoint 7

class Animal {
    var numberOfLegs : Int
    init(numberOfLegs: Int) {
        self.numberOfLegs = numberOfLegs
    }
    
}
class Dog : Animal {
    var breed : String
    init(breed: String, numberOfLegs : Int) {
        self.breed = breed
        super.init(numberOfLegs: numberOfLegs)
    }
    func bark () {
        print("Wuf")
    }
}

class Cat : Animal {
    var breed : String
    
    var isTame : Bool
    init(breed: String, numberOfLegs : Int, isTame: Bool) {
        self.breed = breed
        self.isTame = isTame
        super.init(numberOfLegs: numberOfLegs)
    }
    func speak(){
        print("meow")
    }
}

class Corgi : Dog {
    let name : String
    init(name : String, numberOfLegs: Int, breed: String) {
        self.name = name
        super.init(breed: breed, numberOfLegs: numberOfLegs)
    }
    override func bark() {
        print("Woof!")
    }
}

class Poodle : Dog {
    let name : String
    init(name : String, numberOfLegs: Int, breed: String) {
        self.name = name
        super.init(breed: breed, numberOfLegs: numberOfLegs)
    }
    override func bark() {
        print("WOOF!!!")
    }
}

class Persian : Cat {
    let name : String
    init(name : String, numberOfLegs: Int, breed: String) {
        self.name = name
        super.init(breed: breed, numberOfLegs: numberOfLegs, isTame: true)
    }
    override func speak() {
        print("MEOW!")
    }
}

class Lion : Cat {
    let name : String
    init(name : String, numberOfLegs: Int, breed: String) {
        self.name = name
        super.init(breed: breed, numberOfLegs: numberOfLegs, isTame: false)
    }
    override func speak() {
        print("ROAR!!")
    }
}
