//
//  ViewController.swift
//  sampleSwitch
//
//  Created by Tsukasa Chinen on 2017/10/20.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // スイッチの状態が変わった時に発動
    @IBAction func changeSwitch(_ sender: UISwitch) {
        // senderは今イベントを起こしてるオブジェクト
        // 現在のスイッチの状態をtrue or falseで取得
        //print(sender.isOn) 今起こしているイベントの
        
        /*
         ::Notics
             if文
             条件式にを括弧をつけてもつけなくてもOK
         */
        
        if (sender.isOn) { // trueだったら
            print("スイッチOn");
        }else{
            print("スイッチOf");
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

