import Foundation

class Die {
    var colour: String
    var sides: [String]
    var rollAgain: Bool
    
    init() {
        self.colour = ""
        self.sides = []
        self.rollAgain = true
    }

    func rollDie() -> String {

        let side = sides.randomElement()
        return String(side!)

    }
    
}