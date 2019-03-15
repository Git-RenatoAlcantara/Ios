//
//  CalcularViewController.swift
//  pupeagua
//
//  Created by Renato High on 12/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class CalcularViewController: UIViewController {

    
    @IBOutlet weak var view_fundo: UIView!
    @IBOutlet weak var edit_medidor: UITextField!
    @IBOutlet weak var edit_anterior: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let myColor : UIColor = UIColor.white
        edit_anterior.layer.borderColor = myColor.cgColor
        edit_anterior.layer.borderWidth = 1.0
        
        edit_medidor.layer.borderColor = myColor.cgColor
        edit_anterior.layer.borderWidth = 1.0
        
        cardView(view_fundo)
    
    }
    

    func cardView(_ cards: UIView...){
        for cardIndex in cards {
            cardIndex.layer.shadowColor = UIColor.black.cgColor
            
            cardIndex.layer.shadowOpacity = 0.1
            
            cardIndex.layer.shadowOffset = CGSize(width: 1, height: 1)
            
            cardIndex.layer.shadowRadius = 1
            
            
        }
    }

}
