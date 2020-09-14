import UIKit

protocol Voador {
    func voar()
}

class Pato: Voador {
    func voar() {
        print("Estou voando como um pato")
    }
}

class Aviao: Voador {
    func voar() {
        print("Estou voando como um avião")
    }
}

class SuperMan: Voador {
    func voar() {
        print("Estou voando como um campeão")
    }
}

class TorreDeControle {
    private var arrayVoadores = [Voador]()
    
    func voamTodos() {
        for voador in arrayVoadores {
            voador.voar()
        }
    }
    
    func adicionarVoador(umVoador: Voador) {
        arrayVoadores.append(umVoador)
    }
}

let pato = Pato()
let aviao = Aviao()
let superMan = SuperMan()
let torreControle = TorreDeControle()

torreControle.adicionarVoador(umVoador: pato)
torreControle.adicionarVoador(umVoador: aviao)
torreControle.adicionarVoador(umVoador: superMan)

torreControle.voamTodos()



