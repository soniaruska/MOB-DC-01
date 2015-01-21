// Playground - noun: a place where people can play

class Animal {
    var name = ""
    var species = ""
    
    func stringRepresentation() -> String{
        var stringToReturn = "Species is \(self.species) & name is \(self.name)"
        return stringToReturn
    }
}

func printAnimalName (animal: Animal) {
    println("Animal's name is \(animal.name)")
}

var doggie = Animal()
doggie.name = "Ena"
printAnimalName(doggie)








































