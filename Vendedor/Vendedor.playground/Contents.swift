import UIKit

/*
 Exercício vendedor Um vendedor de loja e possui nome, idade e cpf, saldo em conta vende em sua loja ternos, vestidos e bonés, definir um método vender(quantidadeDePecas: Int, tipoDePeca: String).
 
    -Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos, ele recebe 50 de desconto para cada terno.
    
    - Cada vestido custa 900 reais, caso o cliente compre 5 vestidos ele ganha um véu de noiva de brinde.
 
    -Cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro.
    
        encapsule todos os métodos necessários.
 
 */

public class Produtos {
    var nomeItem: String
    var valorItem: Float
    
    init(nomeItem: String, valorItem: Float) {
        self.nomeItem = nomeItem
        self.valorItem = valorItem
    }
    
    func venderProduto(quantidade: Int) -> Float {
        
        // metodo abstrato, não deve rodar
        fatalError("Não é possivel realizar a venda do produto \(nomeItem)")
    }
}

class Terno: Produtos {
    
    var promoDesconto: Float
    var qttMinimaPromo: Int
    
    init(nomeItem: String,
         valorItem: Float,
         promoDesconto: Float,
         qttMinimaPromo: Int) {
        
        self.promoDesconto = promoDesconto
        self.qttMinimaPromo = qttMinimaPromo
        
        super.init(nomeItem: nomeItem, valorItem: valorItem)
    }
    
    override func venderProduto(quantidade: Int) -> Float {
        var totalVenda: Float = Float(quantidade) * valorItem
        
        if quantidade >= qttMinimaPromo {
            let desconto: Float = Float(quantidade) * promoDesconto
            totalVenda = totalVenda - desconto
        }
        
        return totalVenda
    }
}


class Vestido: Produtos {
    
    var brinde: String
    var qttMinimaBrinde: Int
    var valorBrinde: Float
    
    init(nomeItem: String,
         valorItem: Float,
         brinde: String,
         qttMinimaBrinde: Int,
         valorBrinde: Float) {
        
        self.brinde = brinde
        self.qttMinimaBrinde = qttMinimaBrinde
        self.valorBrinde = valorBrinde
        
        super.init(nomeItem: nomeItem, valorItem: valorItem)
    }
    
    override func venderProduto(quantidade: Int) -> Float {
        return (Float(quantidade) * valorItem)
    }
}


class Bone: Produtos {
    
    var qttMinimaPromo: Int
    var brinde: String
    
    init(nomeItem: String,
         valorItem: Float,
         qttMinimaPromo: Int,
         brinde: String) {
        
        self.qttMinimaPromo = qttMinimaPromo
        self.brinde = brinde
        
        super.init(nomeItem: nomeItem, valorItem: valorItem)
    }
    
    override func venderProduto(quantidade: Int) -> Float {
        return Float(quantidade) * valorItem
    }
}


class Vendedor {
    var nome: String
    var idade: Int
    private var cpf: String
    private var saldoEmConta: Float
    
    init(nome: String, idade: Int, cpf: String, saldoEmConta: Float){
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    func vender(quantidadeDePecas: Int, tipoDePeca: String) -> String {
        
        // coloca toda a string "tipoDePeca" em letras minusculas
        let tipoDePeca = tipoDePeca.lowercased()
        var lucro: Float = 0
        
        switch tipoDePeca {
        case "terno":
            
            let vendaTerno = Terno(nomeItem: tipoDePeca, valorItem: 400, promoDesconto: 50, qttMinimaPromo: 3)
            lucro = vendaTerno.venderProduto(quantidade: quantidadeDePecas)
                        
        case "vestido":
            
            let vendaVestido = Vestido(nomeItem: tipoDePeca, valorItem: 900, brinde: "véu de noiva", qttMinimaBrinde: 5, valorBrinde: 250)
            
            lucro = vendaVestido.venderProduto(quantidade: quantidadeDePecas)
            
            if quantidadeDePecas >= vendaVestido.qttMinimaBrinde {
                lucro = lucro - vendaVestido.valorBrinde
            }
            
        case "bone":
            
            let vendaBone = Bone(nomeItem: tipoDePeca, valorItem: 50, qttMinimaPromo: 2, brinde: "bone")
            
            var qttFaturar = quantidadeDePecas
            let qttBrindes = quantidadeDePecas / 3
            
            if qttBrindes > 0 {
                qttFaturar = qttFaturar - qttBrindes
            }
            
            lucro = vendaBone.venderProduto(quantidade: qttFaturar)
    
        default:
           return "\(tipoDePeca) não cadastrado no sistema. A venda não foi realizada."
        }
        
        atualizaSaldo(valorParaAtualizar: lucro)
        
        return "Venda bem sucedida."
    }
    
    private func atualizaSaldo(valorParaAtualizar: Float) {
        self.saldoEmConta = saldoEmConta + valorParaAtualizar
    }
    
    func getSaldoEmConta() -> Float {
        return saldoEmConta
    }
}


let marcio = Vendedor(nome: "Marcio", idade: 36, cpf: "XXXXXXXXXX", saldoEmConta: 0)
marcio.vender(quantidadeDePecas: 6, tipoDePeca: "bone")
marcio.getSaldoEmConta()
