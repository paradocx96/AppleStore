//
//  LandingViewController.swift
//  IT19180526
//
//  Created by Interactive Media on 4/9/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    
    @IBOutlet weak var signupBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signupBtn.layer.borderWidth = 1
        signupBtn.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func guestLoginBtnClick(_ sender: Any) {
        
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
