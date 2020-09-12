import UIKit

/*
 Temos uma loja de carros, o nome dela é Venda Certa. Essa loja tem um estoque de quantos carros tem no total na loja. No momento, eles tem 50 carros em estoque.
 Para sair um carro do estoque, esse carro precisa ser vendido, não há outro modo de retirar produtos no estoque. Esse estoque também nunca pode ficar negativo.
 A fábrica falou pra loja que se eles conseguirem vender pelo menos 5 carros de uma só vez, a fábrica vai dar 1 carro de bonificação pra loja.
 A fábrica também falou que, no momento que terminarem de vender todo estoque, a fábrica vai dar 2 carros de bonificação pra loja.
 
    Teste de mesa:
        tem 50
        se vende 1 fica com 49
        tem 49
        se vende 5 fica com 44
        ganha 1 da fábrica
        tem 45
        vende 44 fica com 1
        ganha 1 da fábrica
        tem 2
        vende 2 fica com 0
        ganha 2 da fábrica
        tem 2
 */

class VendaCerta {
    private var estoque: Int
    
    init(estoque: Int) {
        self.estoque = estoque
    }
    
    func venderCarro(qttCarroVendido: Int) {
        
        if qttCarroVendido <= estoque {
            
            if qttCarroVendido >= 5 {
                
                estoque = estoque - qttCarroVendido + 1
                
                criaMensagem(mensagem: "venda", valor: qttCarroVendido)
                criaMensagem(mensagem: "bonus", valor: 1)
                
            }else {

                estoque = estoque - qttCarroVendido
                criaMensagem(mensagem: "venda", valor: qttCarroVendido)
            }
            
            if estoque == 0 {
                estoque = 2
                criaMensagem(mensagem: "bonus", valor: 2)
            }
            
        }else {
            criaMensagem(mensagem: "semEstoque", valor: qttCarroVendido)
        }
    }
    
    func getEstoque() -> Int {
        return estoque
    }
    
    private func criaMensagem(mensagem: String, valor: Int) {
        switch mensagem {
        case "semEstoque":
            let msg = "Desculpe, não é possível realizar a venda de \(valor) carros. Não há estoque suficiente."
            apresentaMensagem(mensagem: msg)
            
        case "bonus":
            let msg = "Parabéns a loja foi premiada com \(valor) carros."
            apresentaMensagem(mensagem: msg)
            
        case "venda":
            let msg = "Parabéns pela venda de \(valor) carros."
            apresentaMensagem(mensagem: msg)
            
        default:
            let msg = "Erro. Não é possível realizar a venda. Tente novamente."
            apresentaMensagem(mensagem: msg)
        }
    }
    
    private func apresentaMensagem(mensagem msg: String) -> String {
        return msg
    }

}

// instanciar
let vendaCerta = VendaCerta(estoque: 50)

vendaCerta.venderCarro(qttCarroVendido: 1)
vendaCerta.getEstoque()

vendaCerta.venderCarro(qttCarroVendido: 5)
vendaCerta.getEstoque()

vendaCerta.venderCarro(qttCarroVendido: 44)
vendaCerta.getEstoque()

vendaCerta.venderCarro(qttCarroVendido: 2)
vendaCerta.getEstoque()
