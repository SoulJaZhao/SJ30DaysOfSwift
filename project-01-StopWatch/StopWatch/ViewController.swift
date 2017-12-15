//
//  ViewController.swift
//  StopWatch
//
//  Created by SDPMobile on 2017/12/15.
//  Copyright © 2017年 SoulJa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /* 时间Label */
    @IBOutlet weak var timeLabel: UILabel!
    /* 重置Btn */
    @IBOutlet weak var resetBtn: UIButton!
    /* 开始Btn */
    @IBOutlet weak var startBtn: UIButton!
    /* 暂停Btn */
    @IBOutlet weak var pauseBtn: UIButton!
    /* 初始化Timer */
    var timer:Timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:定时器处理
    @objc func handleTimer() -> () {
        let timeStr = timeLabel.text
        var timeDouble = (timeStr! as NSString).doubleValue
        if timeDouble >= 0.0 {
            timeDouble = timeDouble + 0.1
        }
        timeLabel.text = String.init(format: "%.1f", timeDouble)
    }
    
    //MARK:点击重置按钮
    @IBAction func tapResetBtn(_ sender: Any) {
        timeLabel.text = "0.0"
    }
    
    //MARK:点击开始按钮
    @IBAction func tapStartBtn(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(handleTimer), userInfo: nil, repeats: true)
        startBtn.isEnabled = false
        pauseBtn.isEnabled = true
    }
    
    @IBAction func tapPauseBtn(_ sender: Any) {
        timer.invalidate()
        startBtn.isEnabled = true
        pauseBtn.isEnabled = false
    }
    
}

