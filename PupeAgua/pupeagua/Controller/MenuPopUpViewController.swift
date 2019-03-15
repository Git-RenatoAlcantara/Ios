//
//  MenuPopUpViewController.swift
//  pupeagua
//
//  Created by Renato High on 08/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit

class MenuPopUpViewController: UIViewController {

    @IBOutlet weak var viewPopUp: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.viewPopUp.layer.cornerRadius = 5
    
       
    }
    
    @IBAction func bt_cancelar(_ sender: UIButton) {
        dismiss(animated: true )
    }
    

}
