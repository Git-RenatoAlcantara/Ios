//
//  HistoricoViewController.swift
//  pupeagua
//
//  Created by Renato High on 14/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class HistoricoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    let data = ["14/03/2019", "15/03/2019"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        HistoricoTableViewCell
        
        cell.dataHoraLabel.text = data[indexPath.row]
        
        return (cell)
    }
    

}
