//: Playground - noun: a place where people can play

import UIKit



class Animal {
    var name: String
    var health: Int = 100
    
    init(name: String) {
        self.name = name

    }
    
    func displayHealth() {
        print(name, "has", health, "health")
    }
}



class Cat: Animal {
    func growl() {
        print ("RAWR")
        
    }
    
    override init(name: String){
        super.init(name: name)
        self.health = 150
    }
    func run() {
        print ("running")
        if self.health > 10 {
            self.health -= 10
        }
        else {
            self.health = 1
        }
    }
}

class Cheetah : Cat {
    override func run() {
        print("running fast")
        if self.health > 50{
        self.health -= 50
        }
        else{
        self.health = 200
        }
    }
}

class Lion : Cheetah {
    override func growl() {
        print ("ROAR I am the King of the Jungle")
    }
    override init(name: String){
        super.init(name: name)
        self.health = 200
    }
}


var kitty = Cat(name: "kitty")

//kitty.growl()
//kitty.run()
//kitty.displayHealth()

var simba = Lion(name: "simba")
simba.displayHealth()
simba.growl()
simba.run()






