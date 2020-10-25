class Team{
    let name : String
    let players : [Player]
    let averageRating : Double
    let attackRating : Int
    let defenseRating : Int
    var chosenLineup = [Player]()
    static var teamList = [Team]()
    
    required init(name:String, players:[Player]) {
        self.name = name
        self.players = players
        let ratings = players.map {$0.overall}
        
        let attack = ratings.suffix(3)
        let defense = ratings.prefix(5)
        
        averageRating = ratings.reduce(0.0) {
            return Double($0) + Double($1)/Double(ratings.count)
        }
        
        attackRating = attack.reduce(0) {
            return Int($0) + Int($1)/Int(attack.count)
        }
        
        defenseRating = defense.reduce(0) {
            return Int($0) + Int($1)/Int(defense.count)
        }


        Team.teamList.append(self)
    }
    
    func createLineup(p1:Int,p2:Int,p3:Int,p4:Int,p5:Int,p6:Int,p7:Int,p8:Int,p9:Int,p10:Int,p11:Int){
        chosenLineup.append(self.players[p1])
        chosenLineup.append(self.players[p2])
        chosenLineup.append(self.players[p3])
        chosenLineup.append(self.players[p4])
        chosenLineup.append(self.players[p5])
        chosenLineup.append(self.players[p6])
        chosenLineup.append(self.players[p7])
        chosenLineup.append(self.players[p8])
        chosenLineup.append(self.players[p9])
        chosenLineup.append(self.players[p10])
        chosenLineup.append(self.players[p11])
        
    }
}

class Player{
    let name : String
    let overall : Int
    var rating : Double = 6.0
    static var playerList = [Player]()
    init(name:String, overall:Int){
        self.name = name
        self.overall = overall
        Player.playerList.append(self)
    }
}

//Canada
let Borjan = Player(name: "M. Borjan", overall:77) // 0
let Crepeau = Player(name: "M. Crepeau", overall:71) // 1
let Guilla = Player(name: "Brault-Guilla", overall:64) // 2
let Godinho = Player(name: "M. Godinho", overall:64) // 3
let Morgan = Player(name: "A. Morgan", overall:63) // 4
let Davies = Player(name: "A. Davies", overall:79) // 5
let Henry = Player(name: "D. Henry", overall:79) // 6
let Cornelius = Player(name: "D. Cornelius", overall:69)// 7
let James = Player(name: "M. James", overall:67) // 8
let Hutchinson = Player(name: "A. Hutchinson", overall:76) // 9
let Piette = Player(name: "S. Piette", overall:71) // 10
let Arfield = Player(name: "S. Arfield", overall:73) // 11
let Teibert = Player(name: "R. Teibert", overall:67) // 12
let Osorio = Player(name: "J. Osorio", overall:74) // 13
let David = Player(name: "J. David", overall:77) // 14
let Hoilett = Player(name: "J. Hoilett", overall:72) // 15
let Wotherspoon = Player(name: "D. Wotherspoon", overall:67) // 16
let Millar = Player(name: "L. Millar", overall:64) // 17
let Cavallini = Player(name: "L. Cavallini", overall:74) // 18
let Larin = Player(name: "C. Larin", overall:73) // 19
var CanadaList = [Player]()


//Ivory Coast
let Gbohouo = Player(name: "S. Gbohouo", overall:69) // 0
let Sangare = Player(name: "B. Sangare", overall:67) // 1
let Aurier = Player(name: "S. Aurier", overall:79) // 2
let Bagayoko = Player(name: "M. Bagayoko", overall:65) // 3
let Konan = Player(name: "G. Konan", overall:75) // 4
let Doumbia = Player(name: "S. Doumbia", overall:67) // 5
let Traore = Player(name: "I. Traore", overall:76) // 6
let Kanon = Player(name: "W. Kanon", overall:73) // 7
let Comara = Player(name: "C. Comara", overall:70) // 8
let Maiga = Player(name: "H. Maiga", overall:75) // 9
let Fofana = Player(name: "S. Fofana", overall:76) // 10
let Kessie = Player(name: "F. Kessie", overall:78) // 11
let Angban = Player(name: "V. Angban", overall:71) // 12
let Pepe = Player(name: "N. Pepe", overall:82) // 13
let Cornet = Player(name: "M. Cornet", overall:76) // 14
let Gradel = Player(name: "M. Gradel", overall:78) // 15
let Kouame = Player(name: "C. Kouame", overall:76) // 16
let Assale = Player(name: "R. Assale", overall:75) // 17
let Boli = Player(name: "Y. Boli", overall:75) // 18
let Meite = Player(name: "Y. Meite", overall:69) // 19
var IvoryCoastList = [Player]()


//Scotland
let Hradecky = Player(name: "Hradecky", overall:83) // 0
let Bain = Player(name: "S. Bain", overall:72) // 1
let ODonnell = Player(name: "S. O'Donnell", overall:70) // 2
let Castagne = Player(name: "T. Castagne", overall:76) // 3
let Robertson = Player(name: "A. Robertson", overall:87) // 4
let Tierney = Player(name: "K. Tierney", overall:77) // 5
let Andersen = Player(name: "J. Andersen", overall:76) // 6
let McKenna = Player(name: "S. McKenna", overall:71) // 7
let JSouttar = Player(name: "J. Souttar", overall:71) // 8
let Mulgre = Player(name: "C. Mulgre", overall:69) // 9
let McTominay = Player(name: "S. McTominay", overall:79) // 10
let Fleck = Player(name: "J. Fleck", overall:77) // 11
let McGinn = Player(name: "J. McGinn", overall:77) // 12
let McGregor = Player(name: "C. McGregor", overall:77) // 13
let Cairney = Player(name: "T. Cairney", overall:77) // 14
let Versharean = Player(name: "Y. Versharean", overall:73) // 15
let Irving = Player(name: "A. Irving", overall:64) // 16
let Russell = Player(name: "J. Russell", overall:74) // 17
let Fraser = Player(name: "R. Fraser", overall:79) // 18
let Moore = Player(name: "L. Moore", overall:63) // 19
let Fischer = Player(name: "V. Fischer", overall:76) // 20
let Griffiths = Player(name: "L. Griffiths", overall:73) // 21
let Burke = Player(name: "O. Burke", overall:68) // 22
let Schick = Player(name: "P. Schick", overall:78) // 23
var ScotlandList = [Player]()


//Australia
let Ryan = Player(name: "M. Ryan", overall:79) // 0
let Vukovic = Player(name: "D. Vukovic", overall:75) // 1
let Capa = Player(name: "Capa", overall:79) // 2
let Grant = Player(name: "R. Grant", overall:70) // 3
let Behich = Player(name: "A. Behich", overall:74) // 4
let Smith = Player(name: "B. Smith", overall:65) // 5
let Sainsbury = Player(name: "T. Sainsbury", overall:74) // 6
let Degenek = Player(name: "M. Degenek", overall:74) // 7
let Wright = Player(name: "B. Wright", overall:70) // 8
let Souttar = Player(name: "H. Souttar", overall:68) // 9
let Garcia = Player(name: "D. Garcia", overall:80) // 10
let Luongo = Player(name: "M. Luongo", overall:71) // 11
let Mooy = Player(name: "A. Mooy", overall:83) // 12
let McLean = Player(name: "J. McLean", overall:73) // 13
let McGree = Player(name: "R. McGree", overall:72) // 14
let Irvine = Player(name: "J. Irvine", overall:70) // 15
let Rogic = Player(name: "T. Rogic", overall:75) // 16
let Leckie = Player(name: "M. Leckie", overall:73) // 17
let Williams = Player(name: "I. Williams", overall:82) // 18
let Mabil = Player(name: "A. Mabil", overall:71) // 19
let Hrustic = Player(name: "A. Hrustic", overall:70) // 20
let Promes = Player(name: "Q. Promes", overall:83) // 21
let Arzani = Player(name: "D. Arzani", overall:71) // 22
let Taggart = Player(name: "A. Taggart", overall:75) // 23
let Maclaren = Player(name: "J. Maclaren", overall:73) // 24
var AustraliaList = [Player]()


//Mexico
let Ochoa = Player(name: "G. Ochoa", overall:78) // 0
let Lajud = Player(name: "G. Lajud", overall:71) // 1
let Rodriguez = Player(name: "L. Rodriguez", overall:76) // 2
let Lopez = Player(name: "R. Lopez", overall:71) // 3
let Gaya = Player(name: "J. Gaya", overall:83) // 4
let Gallardo = Player(name: "J. Gallardo", overall:75) // 5
let Fuentes = Player(name: "L. Fuentes", overall:69) // 6
let Arajulo = Player(name: "N. Arajulo", overall:76) // 7
let Montes = Player(name: "C. Montes", overall:74) // 8
let Romo = Player(name: "L. Romo", overall:70) // 9
let Mier = Player(name: "H. Mier", overall:70) // 10
let Alvarez = Player(name: "E. Alvarez", overall:76) // 11
let CRodriguez = Player(name: "C. Rodriguez", overall:72) // 12
let Herrera = Player(name: "H. Herrera", overall:83) // 13
let Guardado = Player(name: "A. Guardado", overall:80) // 14
let DosSantos = Player(name: "J. Dos Santos", overall:78) // 15
let Pzarro = Player(name: "R. Pzarro", overall:77) // 16
let Corona = Player(name: "J. Corona", overall:82) // 17
let Alvarado = Player(name: "R. Alvarado", overall:74) // 18
let Antuna = Player(name: "U. Antuna", overall:69) // 19
let Jimenez = Player(name: "R. Jimenez", overall:83) // 20
let Macias = Player(name: "J. Macias", overall:72) // 21
var MexicoList = [Player]()


//England
let Pickford = Player(name: "J. Pickford", overall:85) // 0
let Hart = Player(name: "J. Hart", overall:75) // 1
let Walker = Player(name: "K. Walker", overall:83) // 2
let RJames = Player(name: "R. James", overall:75) // 3
let Rose = Player(name: "D. Rose", overall:79) // 4
let Zinchenko = Player(name: "O. Zinchenko", overall:78) // 5
let Saka = Player(name: "B. Saka", overall:74) // 6
let Maguire = Player(name: "H. Maguire", overall:83) // 7
let Stones = Player(name: "J. Stones", overall:82) // 8
let Keane = Player(name: "M. Keane", overall:79) // 9
let Henderson = Player(name: "J. Henderson", overall:85) // 10
let Barkley = Player(name: "R. Barkley", overall:79) // 11
let Winks = Player(name: "H. Winks", overall:78) // 12
let Foden = Player(name: "P. Foden", overall:78) // 13
let Maddison = Player(name: "J. Maddison", overall:83) // 14
let Sancho = Player(name: "J. Sancho", overall:83) // 15
let HudsonOdoi = Player(name: "C. Hudson-Odoi", overall:74) // 16
let Sterling = Player(name: "R. Sterling", overall:88) // 17
let Stanislas = Player(name: "J. Stanislas", overall:73) // 18
let Kane = Player(name: "H. Kane", overall:89) // 19
let Wilson = Player(name: "C. Wilson", overall:79) // 20
var EnglandList = [Player]()


//DR Congo
let Lopes = Player(name: "A. Lopes", overall:84) // 0
let RMandanda = Player(name: "R. Mandanda", overall:66) // 1
let Bonet = Player(name: "P. Bonet", overall:63) // 2
let CMbemba = Player(name: "C. Mbemba", overall:75) // 3
let Kioso = Player(name: "P. Kioso", overall:59) // 4
let Masuaku = Player(name: "A. Masuaku", overall:76) // 5
let Nsimba = Player(name: "V. Nsimba", overall:70) // 6
let Pique = Player(name: "G. Pique", overall:88) // 7
let Luyindama = Player(name: "C. Luyindama", overall:79) // 8
let Tisserand = Player(name: "M. Tisserand", overall:74) // 9
let Mbemba = Player(name: "C. Mbemba", overall:74) // 10
let Mabiala = Player(name: "L. Mabiala", overall:73) // 11
let Martinez = Player(name: "J. Martinez", overall:84) // 12
let Toko = Player(name: "N. Toko", overall:67) // 13
let Mulumba = Player(name: "R. Mulumba", overall:66) // 14
let Modric = Player(name: "L. Modric", overall:90) // 15
let Nainggolan = Player(name: "Radja Nainggolan", overall:83) // 16
let Moutoussamy = Player(name: "S. Moutoussamy", overall:73) // 17
let Kayembe = Player(name: "E. Kayembe", overall:68) // 18
let Kakuta = Player(name: "G. Kakuta", overall:74) // 19
let Kayamba = Player(name: "R. Kayamba", overall:74) // 20
let Botaka = Player(name: "J. Botaka", overall:71) // 21
let Bolasie = Player(name: "Y. Bolasie", overall:75) // 22
let Bakambu = Player(name: "C. Bakambu", overall:86) // 23
let Mbokani = Player(name: "D. Mbokani", overall:80) // 24
let Assombalonga = Player(name: "B. Assombalonga", overall:71) // 25
var DRCongoList = [Player]()


//France
let Lloris = Player(name: "H. Lloris", overall:86) // 0
let Mandanda = Player(name: "S. Mandanda", overall:83) // 1
let Pavard = Player(name: "B. Pavard", overall:80) // 2
let Dubois = Player(name: "L. Dubois", overall:78) // 3
let Mendy = Player(name: "B. Mendy", overall:80) // 4
let Kurzawa = Player(name: "L. Kurzawa", overall:76) // 5
let Laporte = Player(name: "A. Laporte", overall:87) // 6
let Kimpembe = Player(name: "P. Kimpembe", overall:82) // 7
let Zouma = Player(name: "K. Zouma", overall:81) // 8
let Diallo = Player(name: "A. Diallo", overall:80) // 9
let Bakayoko = Player(name: "T. Bakayoko", overall:80) // 10
let Capoue = Player(name: "E. Capoue", overall:79) // 11
let Pogba = Player(name: "P. Pogba", overall:87) // 12
let Tolisso = Player(name: "C. Tolisso", overall:82) // 13
let Sissoko = Player(name: "M. Sissoko", overall:79) // 14
let Fekir = Player(name: "N. Fekir", overall:87) // 15
let Hamouma = Player(name: "R. Hamouma", overall:77) // 16
let Karamoh = Player(name: "Y. Karamoh", overall:74) // 17
let Coman = Player(name: "K. Coman", overall:86) // 18
let Diaby = Player(name: "M. Diaby", overall:78) // 19
let BenYedder = Player(name: "W. Ben Yedder", overall:84) // 20
let Giroud = Player(name: "O. Giroud", overall:80) // 21
var FranceList = [Player]()


//Ghana
let Cragno = Player(name: "A. Cragno", overall:83) // 0
let Kwarasey = Player(name: "A. Kwarasey", overall:66) // 1
let Zigi = Player(name: "L. Zigi", overall:66) // 2
let Opare = Player(name: "D. Opare", overall:68) // 3
let Baba = Player(name: "A. Baba", overall:76) // 4
let Florenzi = Player(name: "A. Florenzi", overall:81) // 5
let Asare = Player(name: "N. Asare", overall:72) // 6
let Felipe = Player(name: "L. Felipe", overall:78) // 7
let Benkovic = Player(name: "Benkovic", overall:75) // 8
let Aidoo = Player(name: "J. Aidoo", overall:75) // 9
let Salisu = Player(name: "M. Salisu", overall:77) // 10
let Partey = Player(name: "T. Partey", overall:85) // 11
let Gomez = Player(name: "I. Gomez", overall:72) // 12
let Duncan = Player(name: "A. Duncan", overall:75) // 13
let Badu = Player(name: "E. Badu", overall:75) // 14
let Wakaso = Player(name: "M. Wakaso", overall:75) // 15
let parenko = Player(name: "Shaparenko", overall:73) // 16
let Ofori = Player(name: "E. Ofori", overall:72) // 17
let Mensah = Player(name: "B. Mensah", overall:73) // 18
let AAyew = Player(name: "A. Ayew", overall:76) // 19
let Warris = Player(name: "M. Warris", overall:73) // 202
let Asamoah = Player(name: "K. Asamoah", overall:81) // 21
let Atsu = Player(name: "C. Atsu", overall:74) // 22
let Boateng = Player(name: "K. Boateng", overall:78) // 23
let Acheampong = Player(name: "F. Acheampong", overall:78) // 24
let JAyew = Player(name: "J. Ayew", overall:77) // 25
let Mendes = Player(name: "P. Mendes", overall:72) // 26
var GhanaList = [Player]()


//Switzerland
let Sommer = Player(name: "Y. Sommer", overall:87) // 0
let Omlin = Player(name: "J. Omlin", overall:76) // 1
let CFassnacht = Player(name: "C. Fassnacht", overall:75) // 2
let Mbabu = Player(name: "K. Mbabu", overall:77) // 3
let Marcelo = Player(name: "Marcelo", overall:86) // 4
let Moubandje = Player(name: "F. Moubandje", overall:70) // 5
let Schar = Player(name: "F. Schar", overall:79) // 6
let Akanji = Player(name: "M. Akanji", overall:81) // 7
let Elvedi = Player(name: "N. Elvedi", overall:79) // 8
let Zakaria = Player(name: "D. Zakaria", overall:82) // 9
let Xhaka = Player(name: "G. Xhaka", overall:80) // 10
let Zuber = Player(name: "S. Zuber", overall:76) // 11
let Fernandes = Player(name: "E. Fernandes", overall:72) // 12
let Fassnacht = Player(name: "C. Fassnacht", overall:75) // 13
let Shaqiri = Player(name: "X. Shaqiri", overall:82) // 14
let Steffen = Player(name: "R. Steffen", overall:76) // 15
let Guedes = Player(name: "G. Guedes", overall:86) // 16
let Kutesa = Player(name: "D. Kutesa", overall:68) // 17
let Mehmedi = Player(name: "A. Mehmedi", overall:77) // 18
let Embolo = Player(name: "B. Embolo", overall:77) // 19
let Seferovic = Player(name: "H. Seferovic", overall:76) // 20
var SwitzerlandList = [Player]()


//USA
let ZSteffen = Player(name: "Z. Steffen", overall:80) // 0
let Hamid = Player(name: "B. Hamid", overall:74) // 1
let Yedlin = Player(name: "D. Yedlin", overall:75) // 2
let Dest = Player(name: "S. Dest", overall:72) // 3
let Cannon = Player(name: "R. Cannon", overall:72) // 4
let Johnson = Player(name: "F. Johnson", overall:74) // 5
let Brooks = Player(name: "J. Brooks", overall:77) // 6
let Long = Player(name: "A. Long", overall:75) // 7
let Miazga = Player(name: "M. Miazga", overall:73) // 8
let Adams = Player(name: "T. Adams", overall:78) // 9
let McKennie = Player(name: "W. McKennie", overall:76) // 10
let Bradley = Player(name: "M. Bradley", overall:75) // 11
let Lletget = Player(name: "S. Lletget", overall:71) // 12
let Bedoya = Player(name: "A. Bedoya", overall:74) // 13
let Morales = Player(name: "A. Morales", overall:73) // 14
let Arriola = Player(name: "P. Arriola", overall:73) // 15
let Morris = Player(name: "J. Morris", overall:72) // 16
let Pulisic = Player(name: "C. Pulisic", overall:80) // 17
let Reyna = Player(name: "G. Reyna", overall:69) // 18
let Zardes = Player(name: "G. Zardes", overall:72) // 19
let Sargent = Player(name: "J. Sargent", overall:69) // 20
var USAList = [Player]()


//Russia
let Buffon = Player(name: "Buffon", overall:83) // 0
let Guilherme = Player(name: "G. Guilherme", overall:78) // 1
let Lunev = Player(name: "A. Lunev", overall:78) // 2
let MFernandes = Player(name: "M. Fernandes", overall:82) // 3
let Karavaev = Player(name: "V. Karavaev", overall:74) // 4
let Kolarov = Player(name: "Kolarov", overall:82) // 5
let Zhirkov = Player(name: "Y. Zhirkov", overall:76) // 6
let Kudryashov = Player(name: "F. Kudryashov", overall:72) // 7
let Chiellini = Player(name: "Chiellini", overall:88) // 8
let TSilva = Player(name: "Thiago Silva", overall:87) // 9
let Dzhikiya = Player(name: "G. Dzhikiya", overall:76) // 10
let Semenov = Player(name: "A. Semenov", overall:73) // 11
let Diveev = Player(name: "I. Diveev", overall:70) // 12
let Fernandinho = Player(name: "Fernandinho", overall:86) // 13
let Zobnin = Player(name: "R. Zobnin", overall:79) // 14
let Vidal = Player(name: "Ar. Vidal", overall:87) // 15
let Barinov = Player(name: "D. Barinov", overall:75) // 16
let Ozdoev = Player(name: "M. Ozdoev", overall:77) // 17
let Akhmetov = Player(name: "I. Akhmetov", overall:75) // 18
let DSilva = Player(name: "David Silva", overall:88) // 19
let Golovin = Player(name: "A. Golovin", overall:80) // 20
let Ionov = Player(name: "A. Ionov", overall:73) // 21
let Cheryshev = Player(name: "D. Cheryshev", overall:79) // 22
let Dzyuba = Player(name: "A. Dzyuba", overall:80) // 23
let Smolov = Player(name: "F. Smolov", overall:78) // 24
var RussiaList = [Player]()

var turn = 0

for player in Player.playerList{
    switch player.name{
    case "M. Borjan": turn = 0
    case "S. Gbohouo": turn = 1
    case "Hradecky": turn = 2
    case "M. Ryan": turn = 3
    case "G. Ochoa": turn = 4
    case "J. Pickford": turn = 5
    case "A. Lopes": turn = 6
    case "H. Lloris": turn = 7
    case "A. Cragno": turn = 8
    case "Y. Sommer": turn = 9
    case "Z. Steffen": turn = 10
    case "Buffon": turn = 11
    default: turn + 0
    }
    
    if turn == 0{
        CanadaList.append(player)
    }
    if turn == 1{
        IvoryCoastList.append(player)
    }
    if turn == 2{
        ScotlandList.append(player)
    }
    if turn == 3{
        AustraliaList.append(player)
    }
    if turn == 4{
        MexicoList.append(player)
    }
    if turn == 5{
        EnglandList.append(player)
    }
    if turn == 6{
        DRCongoList.append(player)
    }
    if turn == 7{
        FranceList.append(player)
    }
    if turn == 8{
        GhanaList.append(player)
    }
    if turn == 9{
        SwitzerlandList.append(player)
    }
    if turn == 10{
        USAList.append(player)
    }
    if turn == 11{
        RussiaList.append(player)
    }
}

let Canada = Team(name:"Canada", players:CanadaList)
Canada.createLineup(p1:0, p2:2, p3:4, p4:5, p5:7, p6:8, p7:9, p8:13, p9:14, p10:17, p11:18)

let IvoryCoast = Team(name:"Ivory Coast", players:IvoryCoastList)
IvoryCoast.createLineup(p1:0, p2:1, p3:5, p4:6, p5:3, p6:8, p7:9, p8:10, p9:12, p10:14, p11:15)

let Scotland = Team(name:"Scotland", players:ScotlandList)
Scotland.createLineup(p1:0, p2:3, p3:6, p4:7, p5:4, p6:10, p7:12, p8:15, p9:20, p10:18, p11:21)

let Australia = Team(name:"Australia", players:AustraliaList)
Australia.createLineup(p1:0, p2:2, p3:6, p4:7, p5:4, p6:10, p7:12, p8:13, p9:18, p10:21, p11:23)

let Mexico = Team(name:"Mexico", players:MexicoList)
Mexico.createLineup(p1:0, p2:2, p3:7, p4:8, p5:4, p6:11, p7:13, p8:14, p9:17, p10:19, p11:20)

let England = Team(name:"England", players:EnglandList)
England.createLineup(p1:0, p2:2, p3:7, p4:8, p5:4, p6:10, p7:12, p8:14, p9:15, p10:17, p11:19)

let DRCongo = Team(name:"DR Congo", players:DRCongoList)
DRCongo.createLineup(p1:0, p2:3, p3:7, p4:8, p5:5, p6:12, p7:15, p8:16, p9:22, p10:24, p11:23)

let France = Team(name:"France", players:FranceList)
France.createLineup(p1:0, p2:2, p3:6, p4:7, p5:4, p6:12, p7:13, p8:15, p9:17, p10:18, p11:20)

let Ghana = Team(name:"Ghana", players:GhanaList)
Ghana.createLineup(p1:0, p2:5, p3:7, p4:10, p5:4, p6:11, p7:13, p8:18, p9:19, p10:21, p11:25)

let Switzerland = Team(name:"Switzerland", players:SwitzerlandList)
Switzerland.createLineup(p1:0, p2:3, p3:6, p4:7, p5:4, p6:9, p7:10, p8:14, p9:16, p10:18, p11:19)

let USA = Team(name:"USA", players:USAList)
USA.createLineup(p1:0, p2:2, p3:5, p4:6, p5:3, p6:9, p7:10, p8:16, p9:17, p10:15, p11:19)

let Russia = Team(name:"Russia", players:RussiaList)
Russia.createLineup(p1:0, p2:3, p3:8, p4:9, p5:5, p6:13, p7:15, p8:20, p9:19, p10:22, p11:23)

//    .createLineup(p1:, p2:, p3:, p4:, p5:, p6:, p7:, p8:, p9:, p10:, p11:)

func start() {
    var homeD = 2
    var homeA = 30
    var awayD = 2
    var awayA = 30
    
    var homeName = ""
    var awayName = ""
    var homeChance = 5
    var awayChance = 5
    var homeTactic = "" //tactics invlude: Control Possession, Tiki Taka,
    var awayTactic = "" //Counter Attack, Park the Bus, Route One, Gegenpress
    var homeCounter = 2
    var awayCounter = 2
    var homeControl = 10
    var awayControl = 10
    
    var currentScorer = ""
    var currentAssister = ""
    var home : Team?
    var away : Team?
    var homeLineup = [Player]()
    var awayLineup = [Player]()
    var currentShooter = ""
    //var homeShots = 0
    //var awayShots = 0
    
    func checkHomeTeamName(writtenTeam:String){
        for team in Team.teamList{
            if writtenTeam == team.name{
                home = team
                homeName = team.name
                homeLineup = team.chosenLineup
            }
        }
        
        if homeName == ""{
            fatalError("Team \(writtenTeam) does not exist!")
        }
    }
    
    func checkAwayTeamName(writtenTeam:String){
        for team in Team.teamList{
            if writtenTeam == team.name{
                away = team
                awayName = team.name
                awayLineup = team.chosenLineup
            }
        }
        
        if awayName == ""{
            fatalError("Team \(writtenTeam) does not exist!")
        }
    }
    
    func getAverages() -> Int{
        var AvgProb = 0
        let firstTeamAvg = Int(home!.averageRating)
        let secondTeamAvg = Int(away!.averageRating)
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
    
    //---------------SCORERS + ASSISTERS---------------//
    
    func getHomeScorer(){
        let select = Int.random(in:0...100)
        if select >= 0 && select < 3{currentScorer = homeLineup[1].name; homeLineup[1].rating += 1.5}
        if select > 2 && select < 5{currentScorer = homeLineup[2].name; homeLineup[2].rating += 1.5}
        if select > 4 && select < 9{currentScorer = homeLineup[3].name; homeLineup[3].rating += 1.5}
        if select > 8 && select < 14{currentScorer = homeLineup[4].name; homeLineup[4].rating += 1.5}
        if select > 13 && select < 19{currentScorer = homeLineup[5].name; homeLineup[5].rating += 1.5}
        if select > 18 && select < 37{currentScorer = homeLineup[6].name; homeLineup[6].rating += 1.5}
        if select > 36 && select < 56{currentScorer = homeLineup[7].name; homeLineup[7].rating += 1.5}
        if select > 55 && select < 78{currentScorer = homeLineup[8].name; homeLineup[8].rating += 1.5}
        if select > 77 && select < 91{currentScorer = homeLineup[9].name; homeLineup[9].rating += 1.5}
        if select > 90 && select < 101{currentScorer = homeLineup[10].name; homeLineup[10].rating += 1.5}
        //currentScorer = ""
    }
    
    
    func getHomeAssister(){
        let select = Int.random(in:0...100)
        if select >= 0 && select < 8{currentAssister = homeLineup[1].name; homeLineup[1].rating += 1.5}
        if select > 7 && select < 10{currentAssister = homeLineup[2].name; homeLineup[2].rating += 1.5}
        if select > 9 && select < 13{currentAssister = homeLineup[3].name; homeLineup[3].rating += 1.5}
        if select > 13 && select < 19{currentAssister = homeLineup[4].name; homeLineup[4].rating += 1.5}
        if select > 18 && select < 24{currentAssister = homeLineup[5].name; homeLineup[5].rating += 1.5}
        if select > 24 && select < 33{currentAssister = homeLineup[6].name; homeLineup[6].rating += 1.5}
        if select > 32 && select < 50{currentAssister = homeLineup[7].name; homeLineup[7].rating += 1.5}
        if select > 49 && select < 65{currentAssister = homeLineup[8].name; homeLineup[8].rating += 1.5}
        if select > 64 && select < 87{currentAssister = homeLineup[9].name; homeLineup[9].rating += 1.5}
        if select > 86 && select < 101{currentAssister = homeLineup[10].name; homeLineup[10].rating += 1.5}
        //currentAssister = ""
    }
    
    func getAwayScorer(){
        let select = Int.random(in:0...100)
        if select >= 0 && select < 3{currentScorer = awayLineup[1].name; awayLineup[1].rating += 1.5}
        if select > 2 && select < 5{currentScorer = awayLineup[2].name; awayLineup[2].rating += 1.5}
        if select > 4 && select < 9{currentScorer = awayLineup[3].name; awayLineup[3].rating += 1.5}
        if select > 8 && select < 14{currentScorer = awayLineup[4].name; awayLineup[4].rating += 1.5}
        if select > 13 && select < 19{currentScorer = awayLineup[5].name; awayLineup[5].rating += 1.5}
        if select > 18 && select < 37{currentScorer = awayLineup[6].name; awayLineup[6].rating += 1.5}
        if select > 36 && select < 56{currentScorer = awayLineup[7].name; awayLineup[7].rating += 1.5}
        if select > 55 && select < 78{currentScorer = awayLineup[8].name; awayLineup[8].rating += 1.5}
        if select > 77 && select < 91{currentScorer = awayLineup[9].name; awayLineup[9].rating += 1.5}
        if select > 90 && select < 101{currentScorer = awayLineup[10].name; awayLineup[10].rating += 1.5}
        //currentScorer = ""
    }
    
    
    func getAwayAssister(){
        let select = Int.random(in:0...100)
        if select >= 0 && select < 8{currentAssister = awayLineup[1].name; awayLineup[1].rating += 1.5}
        if select > 7 && select < 10{currentAssister = awayLineup[2].name; awayLineup[2].rating += 1.5}
        if select > 9 && select < 13{currentAssister = awayLineup[3].name; awayLineup[3].rating += 1.5}
        if select > 13 && select < 19{currentAssister = awayLineup[4].name; awayLineup[4].rating += 1.5}
        if select > 18 && select < 24{currentAssister = awayLineup[5].name; awayLineup[5].rating += 1.5}
        if select > 24 && select < 33{currentAssister = awayLineup[6].name; awayLineup[6].rating += 1.5}
        if select > 32 && select < 50{currentAssister = awayLineup[7].name; awayLineup[7].rating += 1.5}
        if select > 49 && select < 65{currentAssister = awayLineup[8].name; awayLineup[8].rating += 1.5}
        if select > 64 && select < 87{currentAssister = awayLineup[9].name; awayLineup[9].rating += 1.5}
        if select > 86 && select < 101{currentAssister = awayLineup[10].name; awayLineup[10].rating += 1.5}
        //currentAssister = ""
    }
    
    //---------------Player who shot---------------//
    
    func homeShot(){
        let select = Int.random(in:0...100)
        if select >= 0 && select < 3{homeLineup[1].rating -= 0.2}
        if select > 2 && select < 5{homeLineup[2].rating -= 0.2}
        if select > 4 && select < 9{homeLineup[3].rating -= 0.2}
        if select > 8 && select < 14{homeLineup[4].rating -= 0.2}
        if select > 13 && select < 19{homeLineup[5].rating -= 0.2}
        if select > 18 && select < 37{homeLineup[6].rating -= 0.2}
        if select > 36 && select < 56{homeLineup[7].rating -= 0.2}
        if select > 55 && select < 78{homeLineup[8].rating -= 0.2}
        if select > 77 && select < 91{homeLineup[9].rating -= 0.2}
        if select > 90 && select < 101{homeLineup[10].rating -= 0.2}
        awayLineup[0].rating += 0.2
    }
    
    func awayShot(){
        let select = Int.random(in:0...100)
        if select >= 0 && select < 3{awayLineup[1].rating -= 0.2}
        if select > 2 && select < 5{awayLineup[2].rating -= 0.2}
        if select > 4 && select < 9{awayLineup[3].rating -= 0.2}
        if select > 8 && select < 14{awayLineup[4].rating -= 0.2}
        if select > 13 && select < 19{awayLineup[5].rating -= 0.2}
        if select > 18 && select < 37{awayLineup[6].rating -= 0.2}
        if select > 36 && select < 56{awayLineup[7].rating -= 0.2}
        if select > 55 && select < 78{awayLineup[8].rating -= 0.2}
        if select > 77 && select < 91{awayLineup[9].rating -= 0.2}
        if select > 90 && select < 101{awayLineup[10].rating -= 0.2}
        homeLineup[0].rating += 0.2
    }
    
    //---------------MATCH---------------//
    
    func match(){
        var firstScorers : [String] = []
        var secondScorers : [String] = []
        var firstAssist : [String] = []
        var secondAssist : [String] = []
        var minutes = 1
        var gameEnd = 90
        var goalScored = false
        var firstProb = 0
        var secProb = 0
        var scorers = ""
        var assisters = ""
        
        print("Who is the home team?")
        let firstTeamInput = readLine()
        checkHomeTeamName(writtenTeam:firstTeamInput!)
        var firstGoals = 0
        var firstMins : [Int] = []
        
        print("Who is the away team?")
        let secondTeamInput = readLine()
        checkAwayTeamName(writtenTeam:secondTeamInput!)
        var secondGoals = 0
        var secondMins : [Int] = []
        
        homeA = home!.attackRating / 2
        awayA = away!.attackRating / 2
        
        homeD = home!.defenseRating / 30
        awayD = away!.defenseRating / 30
        
        //Set up home and away chances
        homeA -= homeChance
        awayA -= awayChance
        
        var prob = getAverages() // number from -20(second advantage)  to  20(first advantage)
        
        /*switch homeTactic {
        case "" : homeCounter += 0
        case "bal" : homeCounter += 0
        case "tiki" : awayCounter -= 1
        homeControl += 10
        case "control" : homeControl += 10
        prob += 5
        case "counter" : homeCounter += 4
        homeControl -= 5
        case "park" : awayCounter -= 1
        awayA -= 2
        homeControl -= 10
        case "route" : homeCounter += 5
        homeControl -= 5
        case "gegen" : homeCounter += 5
        awayControl -= 3
        default: fatalError("ERROR! Undefined tactic \(homeTactic)!")
        }
        
        switch awayTactic {
        case "" : awayCounter += 0
        case "bal" : awayCounter += 0
        case "tiki" : homeCounter -= 1
        awayControl += 10
        case "control" : awayControl += 10
        prob -= 5
        case "counter" : awayCounter += 4
        awayControl -= 5
        case "park" : homeCounter -= 1
        homeA -= 2
        awayControl -= 10
        case "route" : awayCounter += 5
        awayControl -= 5
        case "gegen" : awayCounter += 5
        homeControl -= 3
        default: fatalError("ERROR! Undefined tactic \(awayTactic)!")
        }*/
        
        /* if homeName == ""{
         homeName = firstTeamInput!
         }
         if awayName == ""{
         awayName = secondTeamInput!
         }*/
        
        while minutes < gameEnd{
            goalScored = false
            if prob>0{ //First advantage
                firstProb = Int.random(in:(homeA * -1)...homeA)
                secProb = Int.random(in:(homeA * -1)...homeA)
                goalScored = scoreGoal(firstProb:firstProb, secProb:secProb)
                if goalScored == true{
                    prob+=homeControl
                    gameEnd += 1
                    firstGoals+=1
                    firstMins.append(minutes)
                    getHomeScorer()
                    getHomeAssister()
                    
                    awayLineup[0].rating -= 2.5
                    awayLineup[1].rating -= 0.5
                    awayLineup[2].rating -= 0.7
                    awayLineup[3].rating -= 0.7
                    awayLineup[4].rating -= 0.5
                    
                    firstScorers.append(currentScorer)
                    firstAssist.append(currentAssister)
                }else{
                    prob-=awayCounter
                    if Int.random(in:0...6) == 0{
                        homeShot()
                        awayLineup[1].rating += 0.1
                        awayLineup[2].rating += 0.2
                        awayLineup[3].rating += 0.2
                        awayLineup[4].rating += 0.1
                    }
                }
            }
            if prob<0{ //Advantage second
                firstProb = Int.random(in:(awayA * -1)...awayA)
                secProb = Int.random(in:(awayA * -1)...awayA)
                goalScored = scoreGoal(firstProb:firstProb, secProb:secProb)
                if goalScored == true{
                    prob-=awayControl
                    gameEnd += 1
                    secondGoals+=1
                    secondMins.append(minutes)
                    getAwayScorer()
                    getAwayAssister()
                    
                    homeLineup[0].rating -= 2.5
                    homeLineup[1].rating -= 0.5
                    homeLineup[2].rating -= 0.7
                    homeLineup[3].rating -= 0.7
                    homeLineup[4].rating -= 0.5
                    
                    secondScorers.append(currentScorer)
                    secondAssist.append(currentAssister)
                }else{
                    prob+=homeCounter
                    if Int.random(in:0...6) == 0{
                        awayShot()
                        homeLineup[1].rating += 0.1
                        homeLineup[2].rating += 0.2
                        homeLineup[3].rating += 0.2
                        homeLineup[4].rating += 0.1

                    }
                }
            }
            if prob == 0{
                prob += Int.random(in:-5...5)
            }
            minutes+=1
        }
        
        print("")
        print("")
        print("\(homeName) \(firstGoals)-\(secondGoals) \(awayName)")
        
        //List home scorers
        if firstScorers.count >= 1{
            for i in 0..<firstScorers.count{
                var minute = ""
                if firstMins[i] < 90{
                    minute = "\(firstMins[i])'"
                }else{
                    let min = firstMins[i]-90
                    minute = "90+\(min)'"
                }
                if firstAssist[i] != firstScorers[i]{
                    print("\(firstScorers[i]), assist (\(firstAssist[i])) \(minute)")
                }else{
                    print("\(firstScorers[i]) \(minute)")
                }
            }
        }else{
            print("")
        }
        
        print("")

        //List away scorers
        if secondScorers.count >= 1{
            for i in 0..<secondScorers.count{
                var minute = ""
                if secondMins[i] < 90{
                    minute = "\(secondMins[i])'"
                }else{
                    let min = secondMins[i]-90
                    minute = "90+\(min)'"
                }
                if secondAssist[i] != secondScorers[i]{
                    print("\(secondScorers[i]), assist (\(secondAssist[i])) \(minute)")
                }else{
                    print("\(secondScorers[i]) \(minute)")
                }
            }
        }else{
            print("")
        }
        
        print("")
        print("RATINGS:")
        //List ratings
        for i in 0...10{
            var hRating = (homeLineup[i].rating*10).rounded()/10
            var aRating = (awayLineup[i].rating*10).rounded()/10
            
            if hRating >= 0.0 && hRating <= 10{
                hRating += 0
            }else if hRating < 0.0{
                hRating = 0.0
            }else if hRating > 10.0{
                hRating = 10.0
            }
            
            if aRating >= 0.0 && aRating <= 10{
                aRating += 0
            }else if aRating < 0.0{
                aRating = 0.0
            }else if aRating > 10.0{
                aRating = 10.0
            }
            print("\(homeLineup[i].name): \(hRating)            \(awayLineup[i].name): \(aRating)")
        }
        
        print("---------------------------------------------------")
    }
    match()
}
start()
