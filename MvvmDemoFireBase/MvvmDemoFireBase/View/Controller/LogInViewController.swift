//
//  LogInViewController.swift
//  MvvmDemoFireBase
//
//  Created by mac on 03/11/22.
//

import UIKit

class LogInViewController: BaseViewController {
    //MARK: - @IBOutlet
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnEye: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    //MARK: - Properties
    var viewModel = LogInViewModel()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bindToViewModel()
    }
    
    //MARK: - @IBAction
    @IBAction func onTapBtnLogIn(_ sender: Any) {
        viewModel.setCredential(email: txtEmail.text ?? "", password: txtPassword.text ?? "")
        
        viewModel.isValidData.bind { [weak self] isValid in
            guard let self = self, let isValid = isValid else { return }
            if isValid {
                print("True")
            } else {
                self.alert(title: "Validation", msg: "Please enter valid detail", style: .alert, btnTitle: "Ok", btnStyle: .default)
            }
        }
    }
    
    //MARK: - Functions
    
}

//MARK: - BindData
extension LogInViewController {
    func bindToViewModel() {
        
    }
}
