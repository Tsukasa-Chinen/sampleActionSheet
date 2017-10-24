//
//  ViewController.swift
//  sampleSlider
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
    
    // スライダーのつまみが移動した時
    @IBAction func changeSlider(_ sender: UISlider) {
        print(sender.value);
        // TODO: ツマミの位置が0.5より小さい時
        if (sender.value <= 0.5) {
            print("音が小さいですね");
        } else {
            print("音が大きいですね");
        }
    }

    // MARK: あまり見なくていいやつ
    // FIXME: ここがfixme
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

