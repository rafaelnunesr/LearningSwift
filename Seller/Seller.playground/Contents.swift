import UIKit

/*
 Exercício vendedor Um vendedor de loja e possui nome, idade e cpf, saldo em conta vende em sua loja ternos, vestidos e bonés, definir um método vender(quantidadeDePecas: Int, tipoDePeca: String).
 
    -Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
    
    - Cada vestido custa 900 reais, caso o cliente compre 5 vestidos ele ganha um véu de noiva de brinde.
 
    -Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.
    
        encapsule todos os métodos necessários.
 
 */

public class Vendedor {
    
    private let _nome: String
    private var _idade: Int
    private let _cpf: String
    private var _saldoEmConta: Float
    
    init(_nome: String, _idade: Int, _cpf: String, _saldoEmConta: Float){
        self._nome = _nome
        self._idade = _idade
        self._cpf = _cpf
        self._saldoEmConta = _saldoEmConta
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) {
        
    }
}
