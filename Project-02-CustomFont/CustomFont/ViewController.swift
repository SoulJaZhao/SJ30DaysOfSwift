//
//  ViewController.swift
//  CustomFont
//
//  Created by SDPMobile on 2017/12/15.
//  Copyright © 2017年 SoulJa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /* 文本内容 */
    @IBOutlet weak var contentLabel: UILabel!
    /* 字体数组 */
    let fontNames = ["Copperplate-Bold", "Copperplate","Copperplate-Light"]
    
    var index:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK:改变字体
    @IBAction func changeFont(_ sender: Any) {
        if (index < fontNames.count - 1) {
            index = index + 1
        } else {
            index = 0
        }
        contentLabel.font = UIFont(name: fontNames[index], size: 17)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

