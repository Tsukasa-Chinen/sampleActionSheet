//
//  ViewController.swift
//  sampleAlert
//
//  Created by Tsukasa Chinen on 2017/10/24.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 画面が表示された時1回発動するメソッド
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapCheck(_ sender: UIButton) {
        // 部品となるアラートを作成
        let alert = UIAlertController(
             title: "バッテリー残量"
            ,message: "後20%です"
            ,preferredStyle: .alert
        )

        // アラートにOKボタンを追加
        // handler : OKボタンが押された時に行いたい処理を指定する場所
        alert.addAction(UIAlertAction(
             title: "OK"
            ,style: .default
            ,handler: {
                action in print("OKおされました")
        }))

        // アラートを表示
        // completion: 動作が完了した後に発動される処理を指定する場所
        present(
             alert
            ,animated: true
            ,completion: {
                () -> Void in print("アラートが表示されました")
            }
        )
    }
    // メモリ不足を感知した時に発動するメソッド
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

