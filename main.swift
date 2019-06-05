import GameplayKit

extension Int {
    static func random(min: Int, max: Int) -> Int {
        precondition(min <= max)
        let randomizer = GKRandomSource.sharedRandom()
        return min + randomizer.nextInt(upperBound: max - min + 1)
    }
}

func getAverages() -> Int{
    var AvgProb = 0
    print("Rate the first team from 0 through 10:", terminator:"")
    let firstTeamAvg = Int(readLine()!)!
    print("Rate the second team from 0 through 10:", terminator:"")
    let secondTeamAvg = Int(readLine()!)!
    print("")

    if firstTeamAvg > secondTeamAvg{
        let firstTeamDiff = firstTeamAvg - secondTeamAvg
        for _ in 0...firstTeamDiff{
            AvgProb += Int.random(min: 1, max: 6)
        }
    }
    
    if firstTeamAvg < secondTeamAvg{
        let secondTeamDiff = secondTeamAvg - firstTeamAvg
        for _ in 0...secondTeamDiff{
            AvgProb += Int.random(min: -6, max: -1)
        }
    }

    if firstTeamAvg == secondTeamAvg{
        for _ in 0...firstTeamAvg{
            AvgProb += Int.random(min: -2, max: 2)
        }
    }
    return AvgProb
}

func scoreGoal(firstProb:Int, secProb:Int) -> Bool{
    if firstProb == secProb{
        return true
    }else{
        return false
    }
}

func scorer() -> String{
    let select = Int.random(min: 0, max: 100) 
    if select == 2{return "Player2"}
    if select > 2 && select < 5{return "Player3"}
    if select > 4 && select < 9{return "Player4"}
    if select > 8 && select < 14{return "Player5"}
    if select > 13 && select < 19{return "Player6"}
    if select > 18 && select < 37{return "Player7"}
    if select > 36 && select < 56{return "Player8"}
    if select > 55 && select < 76{return "Player9"}
    if select > 77 && select < 91{return "Player10"}
    if select > 90 && select < 101{return "Player11"}/*
    if select == 2{return team.Player2}
    if select > 2 && select < 5{return "Player3"}
    if select > 4 && select < 9{return "Player4"}
    if select > 8 && select < 14{return "Player5"}
    if select > 13 && select < 19{return "Player6"}
    if select > 18 && select < 37{return "Player7"}
    if select > 36 && select < 56{return "Player8"}
    if select > 55 && select < 76{return "Player9"}
    if select > 77 && select < 91{return "Player10"}
    if select > 90 && select < 101{return "Player11"}
*/    return ""
}

func match(){
    var firstScorers : [String] = []
    var secondScorers : [String] = []
    var prob = getAverages() // number from -20(second advantage)  to  20(first advantage)
    var gameEnd = 90
    var goalScored = false
    var firstProb = 0
    var secProb = 0

    print("First team name?")
    let firstTeam = readLine()
    var firstGoals = 0
    var firstMins : [Int] = []

    print("Second team name?")
    let secondTeam = readLine()
    var secondGoals = 0
    var secondMins : [Int] = []
    




    
    for minutes in 0...gameEnd{
        goalScored = false
        if prob>0{ //First advantage
            firstProb = Int.random(min: 0, max: 40)
            secProb = Int.random(min: 0, max: 40)
            goalScored = scoreGoal(firstProb:firstProb, secProb:secProb)
            if goalScored == true{
                prob+=10
                gameEnd += 1
                firstGoals+=1
                firstMins.append(minutes)
                firstScorers.append(scorer())
            }else{
                prob-=1
            }
        }
        if prob<0{ //Advantage second
            firstProb = Int.random(min: 0, max: 40)
            secProb = Int.random(min: 0, max: 40)
            goalScored = scoreGoal(firstProb:firstProb, secProb:secProb)
            if goalScored == true{
                prob-=10
                gameEnd += 1
                secondGoals+=1
                secondMins.append(minutes)
                secondScorers.append(scorer())
            }else{
                prob+=1
            }
        }
        if prob == 0{
            prob += Int.random(min: -5, max: 5)            
        }
    }
    print("")
    print("\(firstTeam!) \(firstGoals)-\(secondGoals) \(secondTeam!)")
    print("Home Team: \(firstMins)")
    print("Home Scorers: \(firstScorers)")
    print("Away Team: \(secondMins)")
    print("Away Scorers :\(secondScorers)")
}
match()












