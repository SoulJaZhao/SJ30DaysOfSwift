//
//  ViewController.swift
//  LoginPageAnimation
//
//  Created by SDPMobile on 2017/12/15.
//  Copyright © 2017年 SoulJa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfUsername: UITextField!
    
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        UIView.animate(withDuration: 5.0, animations: {
            self.tfUsername.center = self.view.center
        }) { (complete) in
            if complete == true {
                self.tfPassword.center = CGPoint(x: 100, y: 100)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

