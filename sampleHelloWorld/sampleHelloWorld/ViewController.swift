//
//  ViewController.swift
//  sampleHelloWorld
//
//  Created by Tsukasa Chinen on 2017/10/19.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 画面表示の時にラベルの文字を変える
        myLabel.text = "Hello Cebu!!";
    }

    // ボタンタップされた時発動
    @IBAction func tapButton(_ sender: UIButton) {
        //ボタンタップの時ラベルの文字を変える
        myLabel.text = "Yeah Nexseed!!";
        myLabel.text = "Good Evening" + " Cebu!!";
        print("ラベルに表示されている文字：\(myLabel.text!)");
    }

    
    @IBAction func tapButton02(_ sender: UIButton) {
        //ボタンタップの時ラベルの文字を変える
        myLabel.text = "こんにちは Nexseed!!";
        print("日本語表示されます");
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

