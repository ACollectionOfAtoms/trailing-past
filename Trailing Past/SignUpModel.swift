//
//  SignUpModel.swift
//  Trailing Past
//
//  Created by Adam Hernandez on 12/2/15.
//  Copyright © 2015 Adam. All rights reserved.
//

import Foundation

class SignUpModel {
    var email : String
    var password : String
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
    func gotsIt() {
        print(self.email + "\n" + self.password)
    }
}