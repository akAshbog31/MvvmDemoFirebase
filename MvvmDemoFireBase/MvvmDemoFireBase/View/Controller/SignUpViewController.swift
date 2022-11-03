//
//  ViewController.swift
//  MvvmDemoFireBase
//
//  Created by mac on 03/11/22.
//

import UIKit

class SignUpViewController: BaseViewController {
    //MARK: - @IBOutlet
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassWord: UITextField!
    @IBOutlet weak var txtConformPassword: UITextField!
    @IBOutlet weak var btnEyePassWord: UIButton!
    @IBOutlet weak var btnEyeConformPassword: UIButton!
    @IBOutlet weak var btnSignUp: UIButton!
    
    //MARK: - Properties
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK: - @IBAction
    @IBAction func onTapSignUpBtn(_ sender: Any) {
    }
    
    //MARK: - Functions
}

