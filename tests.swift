// Chaines 
"blabla".characters.count // donne la longueur de la chaine


/**************************************************************************/
/******************************** TABLEAUX ********************************/
/**************************************************************************/

// Créer un tableau de chaînes de caractères vide
var vide_Tab = [String]()

// Savoir si un tableau est vide
var statut_Tab = vide_Tab.isEmpty // booléen

// Créer un tableau de réels initialisé [0.0, 0.0, 0.0]
var doubles_Tab: [Double] = [0.0, 0.0, 0.0]
var doubles_Tab = [Double](count: 3, repeatedValue: 0.0)

// Créer un tableau de châines de caractères
var string_Tab: [String] = ["Alex", "Douai"]
var string_Tab = ["Alex", "Douai"] // variante simplifiée (cf. Swift's type inference)

// Compter le nombre d'élément dans un tableau
var longueur_doubles_Tab = doubles_Tab.count
var longueur_string_Tab = string_Tab.count

// Ajout d'un élément à la fin d'un tableau
string_Tab.append("CP:59500") // On ajoute un seul élément
string_Tab+=["CP:59500", "Dpmt:Nord"] // On ajoute un ou plusieurs éléments(s)

// Modifier l'élément d'un tableau
doubles_Tab[0]=1.0
doubles_Tab[0...2]=[3.0,2.0,1.0]

// Insérer un élément à une position donnée
doubles_Tab.insert(4.0, atIndex: 0)

// Supprimer un élément à une position donnée
doubles_Tab.removeAtIndex(3)

// Supprimer le dernier élément 
doubles_Tab.removeLast()

// Supprimer tous les éléments 
doubles_Tab.removeAll()

// Trier un tableau
double_Tab_Tri = doubles_Tab.sort()

// Savoir si un tableau contient un élément
doubles_Tab.contains(2.0) // booléen

// Itération sur un tableau FOR elmt IN tab
for value in string_Tab {
    print(value)
}
for (index, value) in string_Tab.enumerate() { // tuple
    print("Item \(index + 1) : \(value)")
}

// Créer une matrice d'entiers vide
var matrice_vide = [[Int]]()




/**************************************************************************/
/*********************************** SET **********************************/
/*********************** c'est une liste sans ordre ***********************/
/**************************************************************************/

// Définitions
var letters = Set<Character>() // set de caractères vide
var names: Set<String> = ["Alexandre", "Michel", "Nicolas"] // set de chaînes initialisé
var names: Set = ["Alexandre", "Michel", "Nicolas"] // variante simplifiée (cf. Swift's type inference)

// Ajout
letters.insert("A") //!\\ L'ordre d'insertion n'est pas l'ordre du set : ALÉATOIRE

// Savoir si un set contient un élément
letters.contains("B") // booléen false

// Trier
letters_tri = letters.sort()

// Compter le nbr d'élément du set
letters.count()

// Opérations
let Chiffres: Set = [0,1,2,3,4,5,6,7,8,9]
let nombresPremiers: Set = [2,3,5,7,11]
Chiffres.intersect(nombresPremiers).sort() // en commun : [2,3,5,7]
Chiffres.union(nombresPremiers).sort() // total : [0,1,2,3,4,5,6,7,8,9,11]
Chiffres.exclusiveOr(nombresPremiers).sort() // pas en commun : [0,1,4,6,8,9,11]
Chiffres.subtract(nombresPremiers).sort() // garde tous ceux de Chiffres en enlevant ceux de nombresPremiers : [0,1,4,6,8,9]

// Inclusion
let ChiffresPairs: Set = [0,2,4,6,8]
let ChiffresImpairs: Set = [1,3,5,7,9]
nombresPremiers==ChiffresPairs // booléen false
ChiffresPairs.isSubsetOf(Chiffres) // booléen true | voir aussi isStrictSubsetOf
Chiffres.isSupersetOf(ChiffresPairs) // booléen true | voir aussi isStrictSupersetOf
ChiffresPairs.isDisjointWith(ChiffresImpairs) // booléen true




/**************************************************************************/
/****************************** DICTIONNAIRES *****************************/
/**************************************************************************/

// Définitions
var dictionary = [Int: String]() // clé = numérique et valeur = chaîne de caractères
var airports: [String: String]() = ["BRU":"Brussel", "MUC":"Munich"]
var airports = ["BRU":"Brussel", "MUC":"Munich"] // variante simplifiée (cf. Swift's type inference)

// Ajout d'un élément
airports["LHR"] = "Londres"

// Modification d'un élément
airports["LHR"] = "London"

// Modification d'un élément en récupérant son ancienne valeur
let ancien_nom_MUC = airports.updateValue("München", forKey:"MUC")
    // rmq : updateValue() peut aussi ajouter l'élément si la clé n'existait pas. Renvoi de nil dans ce cas.
    // exemple :
    // >>> let ancien_nom_ABC = airports.updateValue("Inconnu", forKey:"ABC")
    // >>> print(ancien_nom_ABC)
    // nil

// Suppression d'un élément
airports["LHR"] = nil

// Suppression d'un élément en récupérant son ancienne valeur
airports.removeValueForKey("LHR")

// Récupération d'une valeur d'un dictionnaire
let airportNameBRU = airports["BRU"]

// Itérations FOR...IN... dans un dictionnaire
for (airportCode, airportName) in airports {
    print("Code : \(airportCode) ; Nom : \(airportName)")
}
for airportCode in airports.keys { // on peut remplacer par airports.keys.sort() si on veut trier le dictionnaire par clé 
    print("Code : \(airportCode)")
}
for airportName in airports.values { // on peut remplacer par airports.values.sort() si on veut trier le dictionnaire par valeur 
    print("Nom : \(airportName)")
}




/**************************************************************************/
/******************************** FONCTIONS *******************************/
/**************************************************************************/

// Sans paramètre d'entrée ni de sortie
func helloWorld() {
    print("Hello World !")
}

// Avec un paramètre d'entrée et un paramètre de sortie
func direBonjour(nomPersonne: String) -> String {
    return "Bonjour \(nomPersonne) :) !"
}

// Avec plusieurs paramètres de sortie
func minMax(array a:[Int]) -> (min: Int, max: Int) {
    var currMin = a[0]
    var currMax = a[0]
    for valeur in a {
        if valeur < currMin {
            currMin = valeur
        }
        else if valeur > currMax {
            currMax = valeur
        }
    }
    return (currMin, currMax) // tuple
}
let tableau = [4, -4, 1, 88, 7, 42]
let extrema = minMax(array: tableau)
print("Min = \(extrema.min) ; Max = \(extrema.max)")

// Paramètre d'entrée par défaut
func direBonjour(nomPersonne: String = "M. Dupont") -> String {
    return "Bonjour \(nomPersonne) :) !"
}

// Paramètre d'entrée variadique (...) allant de 0 terme à l'infini
func somme(numbers:Double...) -> Double { // rmq : slmt 1 paramètre variadique par fonction, et placé en dernière position dans le cas où il y a d'autres paramètres en entrée
    var resultat:Double = 0
    for elmt in numbers { // paramètre variadique considéré comme un tableau
        resultat += elmt
    }
    return resultat
}
print(somme()) // retourne 0.0
print(somme(1.2, 3.5)) // retourne 4.7

// Paramètre d'entrée LOCAL càd variable dans la fonction
func test(var num1: Int, num2: Int) -> Int {
    num1 = num1 + num2 // le paramètre d'entrée num1 est modifiée = variable LOCALE
    return num1
}

// Paramètre d'entrée GLOBAL, càd modifié directement par la fonction sans retourner sa valeur
func inverserNombres(inout a: Int, inout b: Int) {
    let temp = a
    a = b
    b = temp
}
var nb1 = 13, nb2 = -152
inverserNombres(&nb1, b: &nb2) // le & est obligatoire
print(nb1) // renvoie -152
print(nb2) // renvoie 13

// Assigner une fonction à une variable
var maVariable: String -> String = direBonjour
print ("Je cite : \"\(maVariable("Alex"))\"")

