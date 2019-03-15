//
//  Auth.swift
//  Projetos Udemy
//
//  Created by Renato High on 03/03/19.
//  Copyright © 2019 Renato High. All rights reserved.
//

import Foundation

class ValidaLogin{
    private let email:String
    private let pass: String
    
    init(text_email:String, text_senha:String) {
        self.email = text_email
        self.pass = text_senha
   
    }
    
    func isInputValid() -> Bool {
        let email_lowercase = self.email.lowercased()
        
        
        if email_lowercase.count != 0  {
            
            if self.pass.count != 0  {
                
                return true
                
            }
        
        }
        
        return false
    
    }
    
    
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        
        return emailTest.evaluate(with: self.email)
    }
}
