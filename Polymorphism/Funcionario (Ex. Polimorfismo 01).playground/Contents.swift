import UIKit

/*
 Exercício Funcionários
 
    Definir uma classe Funcionário com nome, salário e cpf, depois defina as classes Programador que tem plataforma de trabalho(ex: Android, Web, iOS), e uma classe Designer que temferramenta preferida(ex: Photoshop, Sketch, Gimp).
 
    Ambos tem um bonus anual baseado no salário, Programadorrecebe20% e Designerrecebe 15%, faça um método que calcule o bonus anual e mostre o valor do bonus na tela.
 
    ==> Use polimorfismo para resolver este problema.
 */

class Funcionario {
    
    var nome: String
    var salario: Float
    var cpf: String
    
    init(nome: String, salario: Float, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }
    
    func calculaRemuneracao() -> Float {
        return salario * 12
    }
}


class Programador: Funcionario {
    var plataformaDeTrabalho: String
    
    init(nome: String, salario: Float, cpf: String, plataformaDeTrabalho: String) {
        self.plataformaDeTrabalho = plataformaDeTrabalho
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calculaRemuneracao() -> Float {
        return super.calculaRemuneracao() * 0.2
    }
    
}


class Designer: Funcionario {
    var ferramentaPreferida: String
    
    init(nome: String, salario: Float, cpf: String, ferramentaPreferida: String) {
        self.ferramentaPreferida = ferramentaPreferida
        super.init(nome: nome, salario: salario, cpf: cpf)
    }
    
    override func calculaRemuneracao() -> Float {
        return super.calculaRemuneracao() * 0.15
    }
}

let maria = Programador(nome: "Maria", salario: 10000, cpf: "YYYYYYYYYY", plataformaDeTrabalho: "XCode")
print("O bonus anual para \(maria.nome) é de R$ \(maria.calculaRemuneracao()).")

let pedro = Designer(nome: "Pedro", salario: 5000, cpf: "XXXXXXXXXX", ferramentaPreferida: "After Effects")
print("O bonus anual para \(pedro.nome) é de R$ \(pedro.calculaRemuneracao()).")
