//
//  CadastroViewController.swift
//  pupeagua
//
//  Created by Renato High on 14/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import UIKit
import FirebaseAuth

class CadastroViewController: UIViewController {
    @IBOutlet weak var cad_emailField: UITextField!
    @IBOutlet weak var cad_senhaField: UITextField!
    @IBOutlet weak var cad_redSenhaField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func cad_btnCadastrar(_ sender: Any) {
        let verifica_field = ValidaLogin.init(text_email: self.cad_emailField.text!, text_senha: self.cad_senhaField.text!)
        
        
        if verifica_field.isInputValid() != false {
            
            if verifica_field.isValidEmail() == false {
                
                showMessage(param1: "Ops, e-mail invalido")
                
            }else {
                
                cadastrar()
            }
            
        }else {
            
            showMessage(param1: "Preencha todos os campos" )
        }
        
    }
    
    
    func cadastrar() {
        
        Auth.auth().createUser(withEmail: self.cad_emailField.text!, password: self.cad_senhaField.text!) { (authResult, error) in
            
            
            if let user_logado = authResult?.user {
                self.showMessage(param1: "Cadastro realizado com sucesso! : \(user_logado.isEmailVerified)")
                
            }else{
                self.showMessage(param1: "Nao cadastrado")
            }
        
        }
    }
    
    func showMessage(param1: String) {
        let alertController = UIAlertController(title: "Message", message: param1, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    }
    

}
