//
//  AccountManager.swift
//  MvvmDemoFireBase
//
//  Created by mac on 03/11/22.
//

import UIKit
import FirebaseAuth

struct AccountManager {
    static let shared = AccountManager()
    
    func isLoggedIn() -> Bool {
        return Auth.auth().currentUser != nil
    }
    
    func isFirstTimeVisit() -> Bool {
        return UserDefaults.standard.bool(forKey: "isFirstTimeVisit")
    }
    
    func logOut() {
        do {
            try Auth.auth().signOut()
        } catch let error {
            print("Error: ", error.localizedDescription)
        }
//        Utils.shared.getSceneDelegate()?.showViewController(.login)
    }
}
