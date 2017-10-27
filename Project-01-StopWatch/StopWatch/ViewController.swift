//
//  ViewController.swift
//  StopWatch
//
//  Created by SDPMobile on 2017/10/27.
//  Copyright © 2017年 SoulJa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /* 记录时间 */
    @IBOutlet weak var timeLabel: UILabel!
    /* 记录结果 */
    var counter = 0.0
    /* 定时器 */
    var countTimer:Timer = Timer()
    /* 是否正在执行 */
    var isPlaying:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK:点击重置按钮
    @IBAction func onClickReset() {
        self.counter = 0.0
        self.timeLabel.text = String.init(format: "%.1f", self.counter)
    }

    //MARK:点击开始按钮
    @IBAction func onClickStart() {
        if isPlaying {
            return
        }
        self.countTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(startTimer), userInfo: nil, repeats: true)
        RunLoop.current.add(self.countTimer, forMode: .commonModes)
        isPlaying = true
    }
    
    //MARK:点击暂停按钮
    @IBAction func onClickStop() {
        self.countTimer.invalidate()
        isPlaying = false
    }
    
    //MARK:开启定时器
    func startTimer() {
        self.counter += 0.1
        self.timeLabel.text = String.init(format: "%.1f", self.counter)
    }
    
    deinit {
        if (self.countTimer.isValid) {
            self.countTimer.invalidate()
        }
    }
}

