//
//  AuthVC.swift
//  bracket
//
//  Created by Adil Jiwani on 2017-11-13.
//  Copyright © 2017 Adil Jiwani. All rights reserved.
//

import UIKit
import Firebase
import FacebookCore
import FacebookLogin
import FBSDKCoreKit
import FBSDKLoginKit

class AuthVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if AccessToken.current != nil {
            print("HELLOOOOOOO")
        } else {
            print("hello")
        }
    }
    
    @IBAction func signInWithEmailPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    @IBAction func googleSignInPressed(_ sender: Any) {
    }
    @IBAction func fbSignInPressed(_ sender: Any) {
        let loginManager = LoginManager()
        loginManager.logIn(readPermissions:[ .publicProfile, .email ], viewController: nil) { loginResult in
            switch loginResult {
            case .failed(let error):
                print(error)
            case .cancelled:
                print("User cancelled login.")
            case .success(let grantedPermissions, let declinedPermissions, let accessToken):
                print("Logged in!\(accessToken)")
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
