//
//  BaseViewController.swift
//  MvvmDemoFireBase
//
//  Created by mac on 03/11/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func alert(title: String, msg: String, style: UIAlertController.Style, btnTitle: String, btnStyle: UIAlertAction.Style) {
        let alert = UIAlertController(title: title, message: msg, preferredStyle: style)
        let btnOk = UIAlertAction(title: btnTitle, style: btnStyle, handler: nil)
        alert.addAction(btnOk)
        self.present(alert, animated: true, completion: nil)
    }

}
