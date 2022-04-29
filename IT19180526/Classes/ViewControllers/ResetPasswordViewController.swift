//
//  ResetPasswordViewController.swift
//  IT19180526
//
//  Created by Interactive Media on 4/2/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class ResetPasswordViewController: UIViewController {
    
    @IBOutlet weak var resetPasswordBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetPasswordBtnClick(_ sender: Any) {
        showAlert(title: "Password Resetted Successfully", message: "Please login with your new credentials", actionTitle: "Go to Login >")
    }
    
    
    func showAlert(title: String, message: String, actionTitle: String){
        let alertController = UIAlertController(title: title, message: message, preferredStyle:.alert)

        alertController.addAction(UIAlertAction(title: actionTitle, style: .default)
                  { action -> Void in
                    // Put your code here
                    
                    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
                    let viewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                    self.navigationController?.pushViewController(viewController, animated: true)
                  })
        self.present(alertController, animated: true, completion: nil)
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
