//
//  PainelViewController.swift
//  pupeagua
//
//  Created by Renato High on 05/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit


//
//  PainelViewController.swift
//  pupeagua
//
//  Created by Renato High on 05/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//
import UIKit

class PainelViewController: UIViewController {
    
    @IBOutlet weak var Domiciliar: UIView!
    @IBOutlet weak var Comercial: UIView!
    @IBOutlet weak var Industrial: UIView!
    @IBOutlet weak var Publica: UIView!
    @IBOutlet weak var Question: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        cardView(Domiciliar, Comercial, Industrial, Publica, Question)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        scrollView.contentSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height+80)
    }
    
    
    func cardView(_ cards: UIView...){
        for cardIndex in cards {
            cardIndex.layer.shadowColor = UIColor.black.cgColor
            
            cardIndex.layer.cornerRadius = 5
            
            cardIndex.layer.shadowOpacity = 0.5
            
            cardIndex.layer.shadowOffset = CGSize(width: 1, height: 1)
            
            cardIndex.layer.shadowRadius = 2
            
           
        }
    }
  
}
