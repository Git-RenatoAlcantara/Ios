//
//  ViewControllerLogin.swift
//  pupeagua
//
//  Created by Renato High on 03/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewControllerLogin: UIViewController {

    @IBOutlet weak var email_text_field: UITextField!
    @IBOutlet weak var senha_text_field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logar_button(_ sender: Any) {
        let verifica_field = ValidaLogin.init(text_email: self.email_text_field.text!, text_senha: self.senha_text_field.text!)

        
        if verifica_field.isInputValid() != false {
            
            if verifica_field.isValidEmail() == false {
                
                showMessage(param1: "Ops, e-mail invalido")
                
            }else {
                
                logar()
              
            }
            
        }else {
            
            showMessage(param1: "Preencha todos os campos" )
        }
       
    }
    
    
    func logar() {
        
        Auth.auth().signIn(withEmail: self.email_text_field.text!, password: self.senha_text_field.text!) { (user, error) in
                if  user != nil {
                    let user = Auth.auth().currentUser
                    if let uiid = user {
                        let uid = uiid.uid
                        self.showMessage(param1: "Id do usuario: \(uid)")
                    }
                    
                } else {
                    self.showMessage(param1: "Erro ao logar \(String(describing: error))")
                }
        }
    }
    
    func showMessage(param1: String) {
        let alertController = UIAlertController(title: "Message", message: param1, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
}
