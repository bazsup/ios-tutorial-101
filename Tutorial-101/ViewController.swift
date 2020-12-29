//
//  ViewController.swift
//  Tutorial-101
//
//  Created by Supawit Ruen on 17/12/2563 BE.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // call once after create view
        // for call API when screen loaded
        // constraint not set on this lifecycle
        username.delegate = self
        password.delegate = self
        username.text = "basbasbas"
        
        loginButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        print("viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        print("viewDidLayoutSubviews")
    }

    @IBAction func onClickLogin(_ sender: Any) {
        print("login!")
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "LandingViewController") as! LandingViewController
        
        secondViewController.username = username.text
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        
        
        if textField == username {
            
        }
        if textField == password {
            
        }
        
        switch textField {
        case username:
            print("username")
        case password:
            print("password")
        default:
            print("default")
        }
        validateField()
    }
    
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        if username.text?.count ?? 0 > 5 && password.text?.count ?? 0 > 8 {
//            loginButton.isEnabled = true
//            loginButton.backgroundColor = .blue
//        }
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        
        if textField == username {
            password.becomeFirstResponder()
        }
        return true
    }
    
    func validateField() {
        if username.text?.count ?? 0 > 5 && password.text?.count ?? 0 > 8 {
            loginButton.isEnabled = true
            loginButton.backgroundColor = .blue
        } else {
            loginButton.isEnabled = false
            loginButton.backgroundColor = .lightGray
        }
    }

}
