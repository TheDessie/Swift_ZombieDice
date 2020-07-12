import Foundation

class DicePouch {

    var dice: [Die]

    init() {
        dice = Array(repeating: RedDie(), count: 3) + 
        Array(repeating: GreenDie(), count: 6) + 
        Array(repeating: YellowDie(), count: 4)
    }

    mutating func drawADie() -> Die? {

        if (dice.isEmpty) {
            return nil
        }

        let index = Int.random(in: 0...dice.count-1)
        let resul: Die = dice[index]
        dice.remove(at: index)
        return result
    }

    mutating func drawSomeDice(num: Int) -> [Die] {

        var result: [Die] = []

        for _ in 0...num-1 {

            result.append(drawADie())

        }
        return result

    }



}