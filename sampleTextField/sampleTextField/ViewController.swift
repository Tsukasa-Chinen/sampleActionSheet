//
//  ViewController.swift
//  sampleTextField
//
//  Created by Tsukasa Chinen on 2017/10/20.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* Variable */
    @IBOutlet weak var viewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    // イベントは Did End On Exit を選択
    @IBAction func tapReturn(_ sender: UITextField) {
        // テキストフィールドに入力されている文字をデバッグエリアに表示
        print(sender.text!);
        // TODO: ラベルを一つ追加してそのラベルに入力されている文字を表示
        viewLabel.text = sender.text;

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

