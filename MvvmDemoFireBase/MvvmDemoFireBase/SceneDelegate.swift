//
//  SceneDelegate.swift
//  MvvmDemoFireBase
//
//  Created by mac on 03/11/22.
//

import UIKit

enum RootVCType {
    case signup
    case login
    case custom(viewController: UIViewController)
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private(set) static var shared: SceneDelegate?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        guard let _ = (scene as? UIWindowScene) else { return }
        Self.shared = self
        self.showViewController(.login)
//        if AccountManager.shared.isFirstTimeVisit() {
//            showViewController(.login)
//        } else {
//            showViewController(.signup)
//        }
    }
    
    func showViewController(_ vc: RootVCType, fromLogin: Bool = false) {
        guard let window = self.window else { return }
        let signUpVc = UINavigationController(rootViewController: UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController)
        signUpVc.navigationBar.isHidden = true
        
        let logInVc = UINavigationController(rootViewController: UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController)
        logInVc.navigationBar.isHidden = true
        
        switch vc {
        case .signup:
            window.rootViewController = signUpVc
        case .login:
            window.rootViewController = logInVc
        case .custom(let viewController):
            window.rootViewController = viewController
        }
        window.makeKeyAndVisible()
    }
}

