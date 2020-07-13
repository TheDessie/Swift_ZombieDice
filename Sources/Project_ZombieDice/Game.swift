import Foundation

class Game {

    var players: [Player]

    init() {
        players = []
    }

    func beginTurn(player: Player) {

        var pouch: DicePouch = DicePouch()
        var diceInHand: [Die] = pouch.drawSomeDice(num: 3)
        var haveSteps: Bool = true
        var countSteps: Int = 0
        var side: String

        var lives: Int = 3
        var score: Int = 0
        var end: Bool = false

        outerLoop: while(!end) {

            while(haveSteps) {

                for i in diceInHand {

                    side = i.rollDie()
                    print("You rolled \(i.colour) die with \(side)")

                    if (side == "🧠") {
                        score += 1
                    }

                    else if (side == "💥") {
                        lives -= 1
                    } 
                    
                    else if (side == "👣") {
                        countSteps += 1
                    }

                }

                if (countSteps == 0) {
                    haveSteps = false;
                    
                }

                if (lives < 1) {
                    print("Oops, \(player.name) died!")
                    score = 0;
                    break outerLoop;
                }
            }

            print("Wanna throw again? y/n")
            if (readLine() == "n") {
                end = true
            }
            
        }

        player.score += score

    }

    mutating func start() {
        
    }

}