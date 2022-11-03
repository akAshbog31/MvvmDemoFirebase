//
//  LogInViewModel.swift
//  MvvmDemoFireBase
//
//  Created by mac on 03/11/22.
//

import UIKit

class LogInViewModel {
    var isValidData: Obserable<Bool> = Obserable(false)
    var email: String?
    var password: String?
    
    func setCredential(email: String, password: String) {
        self.email = email
        self.password = password
        self.isValidData.value = !email.isEmpty && !password.isEmpty
    }
}
