//
//  ViewController.swift
//  InstaClone
//
//  Created by Josh on 5/5/21.
//

import FirebaseAuth
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticated()
        
        //Check auth status
    
    }
    
    private func handleNotAuthenticated(){
        
            if Auth.auth().currentUser == nil {
                let loginVc = LoginViewController()
                loginVc.modalPresentationStyle = .fullScreen
                present(loginVc, animated: false)
                
            }
    }

}

