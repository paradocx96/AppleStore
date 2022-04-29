//
//  MoreViewController.swift
//  IT19180526
//
//  Created by Interactive Media on 4/9/22.
//  Copyright © 2022 Interactive Media. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController {
    
    @IBOutlet weak var aboutUsBtn: UIButton!
    @IBOutlet weak var termConditionBtn: UIButton!
    @IBOutlet weak var privacyBtn: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutUsBtn.layer.borderWidth = 1
        aboutUsBtn.layer.borderColor = UIColor.gray.cgColor
        
        termConditionBtn.layer.borderWidth = 1
        termConditionBtn.layer.borderColor = UIColor.gray.cgColor
        
        privacyBtn.layer.borderWidth = 1
        privacyBtn.layer.borderColor = UIColor.gray.cgColor
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
