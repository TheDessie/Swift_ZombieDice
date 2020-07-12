import Foundation

class Die {
    var colour: String
    var sides: [String]

    
    init() {
        self.colour = ""
        self.sides = []
    }

    func rollDie() -> String {

        let side = sides.randomElement()
        return String(side!)

    }
    
}