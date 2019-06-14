var homeD = 2
var homeA = 30
var awayD = 2
var awayA = 30
var homeName = ""
var awayName = ""
var homeChance = 5
var awayChance = 5

//attack - max 15 points

class ManCity{
    let name = "Man City"
    let attack = 15
}
let MCFC = ManCity()

class Everton{
    let name = "Everton"
    let attack = 14
}
let EFC = Everton()

class Bournemouth{
    let name = "Bournemouth"
    let attack = 13
}
let BFC = Bournemouth()

class ManUn{
    let name = "Man United"
    let attack = 12
}
let MUFC = ManUn()

class Leeds{
    let name = "Leeds"
    let attack = 4
}
let LUFC = Leeds()

class Fulham{
    let name = "Fulham"
    let attack = 9
}
let FUL = Fulham()

class Southampton{
    let name = "Southampton"
    let attack = 7
}
let SFC = Southampton()

class Arsenal{
    let name = "Arsenal"
    let attack = 15
}
let AFC = Arsenal()

class Brighton{
    let name = "Brighton"
    let attack = 10
}
let BrightonFC = Brighton()

class Newcastle{
    let name = "Newcastle"
    let attack = 12
}
let NUFC = Newcastle()

class SheffieldU{
    let name = "Sheffield United"
    let attack = 14
}
let SUFC = SheffieldU()

class Leicester{
    let name = "Leicester"
    let attack = 5
}
let LCFC = Leicester()

class Palace{
    let name = "Crystal Palace"
    let attack = 12
}
let CPFC = Palace()

class Preston{
    let name = "Preston NE"
    let attack = 7
}
let PNE = Preston()

class Watford{
    let name = "Watford"
    let attack = 11
}
let WFC = Watford()

class Liverpool{
    let name = "Liverpool"
    let attack = 13
}
let LFC = Liverpool()

class Tottenham{
    let name = "Tottenham"
    let attack = 10
}
let THFC = Tottenham()

class Chelsea{
    let name = "Chelsea"
    let attack = 14
}
let CFC = Chelsea()

class Wolves{
    let name = "Wolves"
    let attack = 13
}
let WWFC = Wolves()

class Villa{
    let name = "Aston Villa"
    let attack = 13
}
let AVFC = Villa()

class homeT{
    var attack : Int
    var name : String
    required init(Attack:Int, Name:String){
        attack = Attack
        name = Name
        homeName = name
        homeChance = attack
    }
}
var homeTeam = homeT.self

class awayT{
    var attack : Int
    var name : String
    required init(Attack:Int, Name:String){
        attack = Attack
        name = Name
        awayName = name
        awayChance = attack
    }
}
var awayTeam = awayT.self


func checkHomeTeamName(Team:String){
    if Team == "man city"{homeTeam.init(Attack:ManCity().attack, Name:ManCity().name)}
    if Team == "everton"{homeTeam.init(Attack:Everton().attack, Name:Everton().name)}
    if Team == "bournemouth" || Team == "bourn"{homeTeam.init(Attack:Bournemouth().attack, Name:Bournemouth().name)}
    if Team == "united"{homeTeam.init(Attack:ManUn().attack, Name:ManUn().name)}
    if Team == "leeds"{homeTeam.init(Attack:Leeds().attack, Name:Leeds().name)}
    if Team == "fulham"{homeTeam.init(Attack:Fulham().attack, Name:Fulham().name)}
    if Team == "south"{homeTeam.init(Attack:Southampton().attack, Name:Southampton().name)}
    if Team == "arsenal"{homeTeam.init(Attack:Arsenal().attack, Name:Arsenal().name)}
    if Team == "brighton"{homeTeam.init(Attack:Brighton().attack, Name:Brighton().name)}
    if Team == "newcastle" || Team == "new"{homeTeam.init(Attack:Newcastle().attack, Name:Newcastle().name)}
    if Team == "sheffield"{homeTeam.init(Attack:SheffieldU().attack, Name:SheffieldU().name)}
    if Team == "leicester"{homeTeam.init(Attack:Leicester().attack, Name:Leicester().name)}
    if Team == "palace"{homeTeam.init(Attack:Palace().attack, Name:Palace().name)}
    if Team == "preston"{homeTeam.init(Attack:Preston().attack, Name:Preston().name)}
    if Team == "watford"{homeTeam.init(Attack:Watford().attack, Name:Watford().name)}
    if Team == "liverpool"{homeTeam.init(Attack:Liverpool().attack, Name:Liverpool().name)}
    if Team == "tottenham"{homeTeam.init(Attack:Tottenham().attack, Name:Tottenham().name)}
    if Team == "chelsea"{homeTeam.init(Attack:Chelsea().attack, Name:Chelsea().name)}
    if Team == "wolves"{homeTeam.init(Attack:Wolves().attack, Name:Wolves().name)}
    if Team == "aston villa" || Team == "villa" {homeTeam.init(Attack:Villa().attack, Name:Villa().name)}
}


func checkAwayTeamName(Team:String){
    if Team == "mancity"{awayTeam.init(Attack:ManCity().attack, Name:ManCity().name)}
    if Team == "everton"{awayTeam.init(Attack:Everton().attack, Name:Everton().name)}
    if Team == "bournemouth" || Team == "bourn"{awayTeam.init(Attack:Bournemouth().attack, Name:Bournemouth().name)}
    if Team == "united"{awayTeam.init(Attack:ManUn().attack, Name:ManUn().name)}
    if Team == "leeds"{awayTeam.init(Attack:Leeds().attack, Name:Leeds().name)}
    if Team == "fulham"{awayTeam.init(Attack:Fulham().attack, Name:Fulham().name)}
    if Team == "south"{awayTeam.init(Attack:Southampton().attack, Name:Southampton().name)}
    if Team == "arsenal"{awayTeam.init(Attack:Arsenal().attack, Name:Arsenal().name)}
    if Team == "brighton"{awayTeam.init(Attack:Brighton().attack, Name:Brighton().name)}
    if Team == "newcastle" || Team == "new"{awayTeam.init(Attack:Newcastle().attack, Name:Newcastle().name)}
    if Team == "sheffield"{awayTeam.init(Attack:SheffieldU().attack, Name:SheffieldU().name)}
    if Team == "leicester"{awayTeam.init(Attack:Leicester().attack, Name:Leicester().name)}
    if Team == "palace"{awayTeam.init(Attack:Palace().attack, Name:Palace().name)}
    if Team == "preston"{awayTeam.init(Attack:Preston().attack, Name:Preston().name)}
    if Team == "watford"{awayTeam.init(Attack:Watford().attack, Name:Watford().name)}
    if Team == "liverpool"{awayTeam.init(Attack:Liverpool().attack, Name:Liverpool().name)}
    if Team == "tottenham"{awayTeam.init(Attack:Tottenham().attack, Name:Tottenham().name)}
    if Team == "chelsea"{awayTeam.init(Attack:Chelsea().attack, Name:Chelsea().name)}
    if Team == "wolves"{awayTeam.init(Attack:Wolves().attack, Name:Wolves().name)}
    if Team == "aston villa" || Team == "villa"{awayTeam.init(Attack:Villa().attack, Name:Villa().name)}
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
            AvgProb += Int.random(in:1...6)
        }
    }
    
    if firstTeamAvg < secondTeamAvg{
        let secondTeamDiff = secondTeamAvg - firstTeamAvg
        for _ in 0...secondTeamDiff{
            AvgProb += Int.random(in:-6 ... -1)
        }
    }

    if firstTeamAvg == secondTeamAvg{
        for _ in 0...firstTeamAvg{
            AvgProb += Int.random(in:-2...2)
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
    let select = Int.random(in:0...100)    
    if select == 2{return "Player2"}
    if select > 2 && select < 5{return "Player3"}
    if select > 4 && select < 9{return "Player4"}
    if select > 8 && select < 14{return "Player5"}
    if select > 13 && select < 19{return "Player6"}
    if select > 18 && select < 37{return "Player7"}
    if select > 36 && select < 56{return "Player8"}
    if select > 55 && select < 76{return "Player9"}
    if select > 77 && select < 91{return "Player10"}
    if select > 90 && select < 101{return "Player11"}
    return ""
}


func assister() -> String{
    let select = Int.random(in:0...100)    
    if select > 0 && select < 8{return "Player2"}
    if select > 7 && select < 10{return "Player3"}
    if select > 9 && select < 13{return "Player4"}
    if select > 13 && select < 19{return "Player5"}
    if select > 18 && select < 24{return "Player6"}
    if select > 24 && select < 33{return "Player7"}
    if select > 32 && select < 50{return "Player8"}
    if select > 49 && select < 65{return "Player9"}
    if select > 64 && select < 87{return "Player10"}
    if select > 86 && select < 101{return "Player11"}
    return ""
}

//---------------MATCH---------------//
	
func match(){
    var firstScorers : [String] = []
    var secondScorers : [String] = []
    var firstAssist : [String] = []
    var secondAssist : [String] = []
    var gameEnd = 90
    var goalScored = false
    var firstProb = 0
    var secProb = 0
    var scorers = ""
    var assisters = ""

    print("First team name?")
    let firstTeamInput = readLine()
    checkHomeTeamName(Team:firstTeamInput!)
    var firstGoals = 0
    var firstMins : [Int] = []
    
    print("Second team name?")
    let secondTeam = readLine()
    var secondGoals = 0
    var secondMins : [Int] = []
    
    //Set up home and away chances
    homeA -= homeChance
    awayA -= awayChance
    
    var prob = getAverages() // number from -20(second advantage)  to  20(first advantage)

    for minutes in 0...gameEnd{
        goalScored = false
        if prob>0{ //First advantage
            firstProb = Int.random(in:(homeA * -1)...homeA)
            secProb = Int.random(in:(homeA * -1)...homeA)
            goalScored = scoreGoal(firstProb:firstProb, secProb:secProb)
            if goalScored == true{
                prob+=10
                gameEnd += 1
                firstGoals+=1
                firstMins.append(minutes)
		scorers = String(scorer())
                firstScorers.append(scorers)
 		assisters = String(assister())
		firstAssist.append(assisters)
		
            }else{
                prob-=1
            }
        }
        if prob<0{ //Advantage second
            firstProb = Int.random(in:(awayA * -1)...awayA)
            secProb = Int.random(in:(awayA * -1)...awayA)
            goalScored = scoreGoal(firstProb:firstProb, secProb:secProb)
            if goalScored == true{
                prob-=10
                gameEnd += 1
                secondGoals+=1
                secondMins.append(minutes)
                let scorers = scorer()
		secondScorers.append(scorers)
		let assisters = assister()
		secondAssist.append(assisters)
		
            }else{
                prob+=1
            }
        }
        if prob == 0{
            prob += Int.random(in:-5...5)            
        }
    }
    print("")
    print("\(homeName) \(firstGoals)-\(secondGoals) \(secondTeam!)")
    print("Home Team: \(firstMins)")
    print("Home Scorers: \(firstScorers)")
    print("Home Assisters: \(firstAssist)")
    print("-----------------------------------------------------------")
    print("Away Team: \(secondMins)")
    print("Away Scorers :\(secondScorers)")
    print("Away Assisters :\(secondAssist)")
    print("")
}
match()












