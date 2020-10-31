//
//  FirstVC.swift
//  TabBar
//
//  Created by Rafael Nunes Rios on 10/23/20.
//

import UIKit

class CreditCardVC: UIViewController {
    
  @IBOutlet weak var tableView: UITableView!
    
  private var cartoes: Cartoes?
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.tableView.register(UINib(nibName: "CreditCardContainerCell", bundle: nil), forCellReuseIdentifier: "CreditCardContainerCell")
    self.cartoes = self.loadCreditCard()
    
    if self.cartoes != nil {
        
      self.tableView.delegate = self
      self.tableView.dataSource = self
    }
    
    self.tableView.tableFooterView = UIView()
    
    print("CreditCardVC----viewDidLoad")
    // Do any additional setup after loading the view.
  }
    
    
    @IBAction func tappedPerfilButton(_ sender: UIBarButtonItem) {
        
        print("tappedPerfilButton")
    }
    
    
  private func loadCreditCard() -> Cartoes? {
    if let path = Bundle.main.path(forResource: "cartoes", ofType: "json"){
      do {
        let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
        let cartoes = try JSONDecoder().decode(Cartoes.self, from: data)
        print("=======>cartoes\(cartoes)")
        return cartoes
      }catch{
        print("Deu ruim no parse")
        return nil
      }
    }
    return nil
  }
}

extension CreditCardVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: CreditCardContainerCell? = tableView.dequeueReusableCell(withIdentifier: "CreditCardContainerCell", for: indexPath) as? CreditCardContainerCell
        
        cell?.setup(value: self.cartoes, delegate: self)
        
        return cell ?? UITableViewCell()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc: InvoiceVC? = segue.destination as? InvoiceVC
        vc?.cardID = sender as? String
    }
    
    
}

extension CreditCardVC: CreditCardContainerCellDelegate {
    func tappedCreditCardWith(id: String) {
        
        self.performSegue(withIdentifier: "InvoiceVC", sender: id)
        print("tappedCreditCard ==>\(id)")
    }
}
