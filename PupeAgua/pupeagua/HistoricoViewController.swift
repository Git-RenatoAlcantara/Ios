//
//  HistoricoViewController.swift
//  pupeagua
//
//  Created by Renato High on 12/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit
class Historico {
    var productName: String?
    var productCategory: String?
    
    init(prName:String, prCategory:String){
        self.productName = prName
        self.productCategory = prCategory
    }
}
class HistoricoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tabelaHistorico: UITableView!
    
    var historicoArray = [Historico]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let macBook = Historico(prName: "MackBook pro",
                                prCategory: "Laptop")
        historicoArray.append(macBook)
        
        let macBookAir = Historico(prName: "MackBook air",
                                prCategory: "Laptop")
        historicoArray.append(macBookAir)
    
        
    }
    

    
    // MARK: - UITableView methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return historicoArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "historicoList")
    
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "historicoList")
        }
        
        cell?.textLabel?.text = historicoArray[indexPath.row].productName
        cell?.detailTextLabel?.text = historicoArray[indexPath.row].productCategory
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

}
