//
//  ViewController.swift
//  Exe01_Protocols
//
//  Created by Rafael Rios on 9/18/20.
//  Copyright © 2020 Rafael Rios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayItens = [FormatadorProtocol]()

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
    }
    
    private func filtrar(texto: String) {
        
        let texto: String = texto.lowercased()
        var output: String = ""
        let arrayitensFiltrados = getItensFiltrados(filtro: texto)
        
        for item in arrayitensFiltrados {
            output = "\(output)\n\(item.getFormatadoParaUsuario())"
        }
        
        atualizaLabel(informacao: output)
    }
    
    private func getItensFiltrados(filtro: String) -> [FormatadorProtocol] {
        
        var arrayItensFiltrados = [FormatadorProtocol]()

        for item in arrayItens {
            
            if item.getFormatado().lowercased().contains(filtro) {
                arrayItensFiltrados.append(item)
            }
        }
        
        return arrayItensFiltrados
    }
    
    private func atualizaLabel(informacao: String) {
        labelText.text = informacao
    }

}

extension ViewController: UISearchBarDelegate {
 
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let texto = searchBar.text {
            filtrar(texto: texto)
        }
    }
}

