//
//  SecondVC.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 10/23/20.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var timeLineTableView: UITableView!
    
    var arrayLancamentos: [LancamentoElement] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("FirstVC------viewDidLoad")
        
        self.timeLineTableView.register(UINib(nibName: "ExtratoCell", bundle: nil), forCellReuseIdentifier: "ExtratoCell")
        
        self.arrayLancamentos = self.loadMovimentacoes() ?? []
        
        self.timeLineTableView.delegate = self
        self.timeLineTableView.dataSource = self
        self.timeLineTableView.separatorStyle = .none

        
    }
    
    private func loadMovimentacoes() -> [LancamentoElement]? {
        if let path = Bundle.main.path(forResource: "despesas", ofType: "json") {
            
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let movimentacao = try JSONDecoder().decode(Movimentacao.self, from: data)
                
                print("=======>movimentacao \(movimentacao)")
                
                return movimentacao.lancamentos
            }catch {
                print("Deu ruim no parse")
                return nil
            }
            
        }
        
        return nil
    }
}

extension SecondVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayLancamentos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ExtratoCell? = tableView.dequeueReusableCell(withIdentifier: "ExtratoCell", for: indexPath) as? ExtratoCell
        
        cell?.setup(value: self.arrayLancamentos[indexPath.row])
        
        return cell ?? UITableViewCell()
        
    }
}
