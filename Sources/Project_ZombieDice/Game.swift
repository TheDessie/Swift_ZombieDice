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

            countSteps = 3

            while(haveSteps) {

                for i in diceInHand {
                    
                    if (i.rollAgain) {
                        
                        side = i.rollDie()
                        print("You rolled \(i.colour) die with \(side)")

                        if (side == "🧠") {
                            score += 1
                            i.rollAgain = false
                            countSteps -= 1
                        }

                        else if (side == "💥") {
                            lives -= 1
                            i.rollAgain = false
                            countSteps -= 1
                        } 
                        
                        else if (side == "👣") {
                            i.rollAgain = true
                        }
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

        var isGameWon = false

        while(true) {

            print("Enter number of players (2-8)")
            var playersCount: Int = Int(readLine())
            if (playersCount >= 2 && playersCount <= 8) {
                break;
            }
            print("Invalid number of players!")
            
        }

        for i in 1...playersCount {
            print("Enter the name of player \(i):")
            let currentPlayer: Player = Player(name: readLine()!)
            players.append(currentPlayer)
        }

        while(!isGameWon) {

            for i in players {

                print("\(i.name)'s turn!")
                beginTurn(player: i)
                if (i.score >= 13) {
                    print("\(i.name) won the game!")
                    isGameWon = true
                    break
                }
            }
        }  
    }
}