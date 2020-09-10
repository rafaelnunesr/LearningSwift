import UIKit

/*
 1 - Definir três métodos que imprimam saudações diferentes em tela e sejam executados
    da seguinte forma:
        cumprimentarA(pessoa: "João")
        cumprimentar(a: "João")
        cumprimentarA("João")
 */

/*

func cumprimentarA(pessoa: String) {
    print("Olá \(pessoa), como está?")
}

func cumprimentar(a pessoa: String) {
    let cumprimento = "Oi \(pessoa), tudo bom?"
    print(cumprimento)
}

func cumprimentarA(_ pessoa: String) -> String{
    let cumprimento = "Olá \(pessoa), tudo bem?"
    return cumprimento
}

print("**** EXERCÍCIO 01 ****")
print()
cumprimentarA(pessoa: "João")
cumprimentar(a: "João")
print(cumprimentarA("João"))
print()

/*
 2 - Escrever o método eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool deve usar dois números
    inteiros como parâmetros e retornar true se o primeiro número for menor que o segundo número ou false, caso contrário.
        
        • Invocar o método com os números 3 e 5 e imprimir mna tela o resultado.
        • Invocar o método com os números 7 e 5 e imprimir mna tela o resultado.
        • Invocar o método com os números 10 e 10 e imprimir mna tela o resultado.
 */

func eMenor(oPrimeiro: Int, oSegundo: Int) -> Bool {
    if(oPrimeiro < oSegundo) {
        return true
    }
    
    return false
}

let metodo1: Bool = eMenor(oPrimeiro: 3, oSegundo: 5)
var metodo2: Bool = eMenor(oPrimeiro: 7, oSegundo: 5)


print("**** EXERCÍCIO 02 ****")
print()
print("Método 1: \(metodo1)")
print("Método 2: \(metodo2)")
print("Método 3: \(eMenor(oPrimeiro: 10, oSegundo: 10))")
print()


/*
 3 - Escrever o método eImparMaiorQueDez(umNumero: Int) -> Bool que deve
     analisar um número inteiro como parâmetro e retornar true se o número for ímpar
     e maior do que dez e false, caso contrário.
         • Invocar o método com o número 3 e imprimir na tela o resultado.
         • Invocar o método com o número 4 e imprimir na tela o resultado.
         • Invocar o método com o número 13 e imprimir na tela o resultado.
         • Invocar o método com o número 14 e imprimir na tela o resultado.
     Ajuda: o operador % calcula o resto da divisão entre dois números inteiros.
     (Ex.: “5 % 2” dá 1 como resultado; enquanto “4 % 2” dá 0 como resultado).
 */

func eImparMaiorQueDez(umNumero: Int) -> Bool {
    if(umNumero > 10 && umNumero % 2 != 0){
        return true
    }
    
    return false
}

let numero01: Bool = eImparMaiorQueDez(umNumero: 3)
let numero02: Bool = eImparMaiorQueDez(umNumero: 4)
let numero03: Bool = eImparMaiorQueDez(umNumero: 13)
let numero04: Bool = eImparMaiorQueDez(umNumero: 14)

print("**** EXERCÍCIO 03 ****")
print()
print("numero01: \(numero01)")
print("numero01: \(numero02)")
print("numero01: \(numero03)")
print("numero01: \(numero04)")
print()

/*
 4 - Imprima na tela a soma dos primeiros dez números naturais ÍMPARES
 elevados ao quadrado.
 */

var dezPrimeirosNumerosImparesAoQuadrado = [Int]()
var numeroControle: Int = 0

while dezPrimeirosNumerosImparesAoQuadrado.count < 10 {
    if(numeroControle % 2 != 0){
        dezPrimeirosNumerosImparesAoQuadrado.append(numeroControle * numeroControle)
    }
    numeroControle = numeroControle + 1
}

var total: Int = 0

for num in dezPrimeirosNumerosImparesAoQuadrado {
    total = total + num
}

print("**** EXERCÍCIO 04 ****")
print()
print("A soma dos dez primeiros números naturais elevados ao quadrado é: \(total).")
print()


 5 - Imprimir números aleatórios entre 0 e 5, até que se imprima um 3.
     Ajuda: A função arc4random_uniform(_ n: Int) (definida na biblioteca
     Faundation) retorna um número aleatório entre 0 e o parâmetro,
     exemplo.
            >>> var numero = arc4random_uniform(5)
 */

print("**** EXERCÍCIO 05 ****")
print()

while true {
    let numero = Int.random(in: 0...5)
    
    if (numero == 3) {
        break
    }
    
    print("O número escolhido foi: \(numero)")
}
