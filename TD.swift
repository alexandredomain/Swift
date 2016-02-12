class Eleve {
    // class regroupe des données et des méthodes ( = moyen d'agir sur ces données)
    // self fait référence à var initialisée plus haut
    
    var nom:String
    var prenom:String
    var notes:[Double] {
        didSet {
            print("La moyenne est de : \(self.moyenne)")
        }
    }
    var moyenne:Double {
        get { // tentative de lecture
            var s = 0.0
            for var i=0 ; i<notes.count ; i++ {
                s += notes[i]
            }
            return s / Double(notes.count)
        }
        set(newNote) { // tentative d'écriture
            print("Ne pas trafiquer la moyenne des notes svp")
        }
    }
    
    init(nom:String,prenom:String) {
        self.nom=nom
        self.prenom=prenom
        notes=[10]
    }
    
}

var e = Eleve(nom:"ABC", prenom:"DEF")

e.notes.append(12)
e.moyenne = 1
e.notes.removeAtIndex(1)





//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


print("Hello World")

print("Salut");print("apple")

let pi = 3.14
let pi♥ = 3.1415

let hello = "Hello" ; let world = "World"

var message = hello + " " + world

let pointEx: Character = "!"

message.append(pointEx)


print(message)



var doublepouvantnepasexister: Double?
doublepouvantnepasexister = 3.0
//doublepouvantnepasexister = nil

var valeur = doublepouvantnepasexister!



var testopt: Int? = 3
let test: Int = testopt!

if let test = testopt {
    print("Le test vaut \(test)")
    print("Le test vaut", test)
}

var tab = [1,2,3,4,5,6]
tab[1...3] = [6,7,8]

print(tab)


let matierealgo: (nom:String,coeff:Int) = ("IAP",3)

print(matierealgo.nom)
print("\(matierealgo.1)")

func factoriel (n:Int64) -> Int64 {
    if n==0 {
        return 1
    }
    else {
        return n * factoriel(n-1)
    }
}

factoriel(n:20)

func minmatableau:[Int])->(min: Int, max: Int)?{
    if tableau.isEmpty{return nil}
    var valmin = tableau[0]
    var valmax = tableau[0]
    for i in tableau[1..<tableau.count]{
        if i<valmin {
            valmin = i
        }
        else if i>valmax {
            valmax = i
        }
    }
    return (valmin,valmax)
}

if let bornes = minma[1,2,44,7,-30,70]) {
    print("écart entre valeur max et min", (bornes.max-bornes.min))
}

if let bornes = minma[]) {
    print("écart entre valeur max et min", (bornes.max-bornes.min))
}