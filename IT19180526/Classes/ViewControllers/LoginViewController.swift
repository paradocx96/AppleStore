//
//  LoginViewController.swift
//  IT19180526
//
//  Created by Interactive Media on 4/2/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var textUsername: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var eyeBtn: UIButton!
    
    let UserName: String = "abc@email.com"
    let PassWord: String = "password"
    
    var isHide = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eyeBtn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
    }
    
    @IBAction func btnLoginOnClick(_ sender: Any) {
        
        if textUsername.text != "" {
            if textPassword.text != "" {
                if(textUsername.text == UserName && textPassword.text == PassWord) {
                    
                    if let mainWindow = UIApplication.shared.windows.first{
                        
                        let mainStoryBoard = UIStoryboard(name: "Main", bundle: nil)
                        if let RootVc = mainStoryBoard.instantiateViewController(withIdentifier: "HomeUITabBarController") as? HomeUITabBarController {
                            let initialViewController = mainStoryBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
                            let navController = UINavigationController(rootViewController: initialViewController)
                            mainWindow.rootViewController = navController
                            mainWindow.rootViewController = RootVc
                            mainWindow.makeKeyAndVisible()
                            
                        }
                    }
                    
                } else {
                    showAlert(title: "LOGIN", message: "Login Credentials Wrong!", actionTitle: "OK")
                }
            } else {
                showAlert(title: "LOGIN", message: "Login Credentials Empty!", actionTitle: "OK")
            }
        } else {
            showAlert(title: "LOGIN", message: "Login Credentials Empty!", actionTitle: "OK")
        }
    }
    
    func showAlert(title: String, message: String, actionTitle: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle:.alert)
        
        alertController.addAction(UIAlertAction(title: actionTitle, style: .default)
        { action -> Void in
            // Put your code here
        })
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func eyeBtnClick(_ sender: Any) {
        if (isHide == true){
            eyeBtn.setImage(UIImage(systemName: "eye"), for: .normal)
            textPassword.isSecureTextEntry = false
            isHide = false
        }else{
            eyeBtn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            textPassword.isSecureTextEntry = true
            isHide = true
        }
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
