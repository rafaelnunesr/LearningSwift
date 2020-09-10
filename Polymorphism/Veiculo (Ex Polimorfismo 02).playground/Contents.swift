import UIKit

/*
 Exercício - Veículos
    Definir uma classe Veículo com cor, preço e quantidade de passageiros, depois defina as classes Carro que tem tamanho das rodas, e Avião que tem piloto e companhia aérea. queremos descobrir a quantidade de combustível que cada um dos veículos gasta por viagem, defina um método que recebe como parâmetro a distancia em Km e calcule a quantidade de combustível.
            Carro: tamanho das rodas * quantidade de passageiros * distancia
            Avião quantidade de passageiros  * distancia
 */

class Veiculo {
    var cor: String
    var preco: Float
    var quantidadeDePassageiros: Int
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int) {
        self.cor =  cor
        self.preco = preco
        self.quantidadeDePassageiros = quantidadeDePassageiros
    }
    
    func calculaConsumoCombustivel(distanciaKm: Float) -> Float {
        return Float(quantidadeDePassageiros) * distanciaKm
    }
}


class Carro: Veiculo {
    var tamanhoDasRodas: Int
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int, tamanhoDasRodas: Int) {
        self.tamanhoDasRodas = tamanhoDasRodas
        
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
    override func calculaConsumoCombustivel(distanciaKm: Float) -> Float {
        return Float(tamanhoDasRodas) * super.calculaConsumoCombustivel(distanciaKm: distanciaKm)
    }
    
}



class Aviao: Veiculo {
    var piloto: String
    var companhiaAerea: String
    
    init(cor: String, preco: Float, quantidadeDePassageiros: Int, piloto: String, companhiaAerea: String) {
        self.piloto = piloto
        self.companhiaAerea = companhiaAerea
        
        super.init(cor: cor, preco: preco, quantidadeDePassageiros: quantidadeDePassageiros)
    }
    
}

let uno = Carro(cor: "Prata", preco: 30000, quantidadeDePassageiros: 5, tamanhoDasRodas: 14)
uno.calculaConsumoCombustivel(distanciaKm: 10)

let boing777 = Aviao(cor: "Branco", preco: 800000000, quantidadeDePassageiros: 260, piloto: "Jose", companhiaAerea: "Etihad")
boing777.calculaConsumoCombustivel(distanciaKm: 200)
