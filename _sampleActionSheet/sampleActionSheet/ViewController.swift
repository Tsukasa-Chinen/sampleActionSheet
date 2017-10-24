//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Tsukasa Chinen on 2017/10/24.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    /* Variable */
    @IBOutlet weak var myLabel: UILabel!
    var vStrYoga:String = "ヨガ"
    var vStrBasket:String = "バスケット"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // Selectボタンが押された時に発動
    @IBAction func tapSelect(_ sender: UIButton) {
        
        // アクションシートを作成
        let actionSheet = UIAlertController(
             title: "どのアクティビティにする"
            ,message: "今日のアクティビティ"
            ,preferredStyle: .actionSheet
        )

        // アクティビティボタン1を追加
        actionSheet.addAction(UIAlertAction(
             title: vStrYoga
            ,style: .default
            // ↓selfは class ViewControllerを指している
            ,handler: {action in self.activity(name: self.vStrYoga)}
        ))

        // アクティビティボタン2を追加
        actionSheet.addAction(UIAlertAction(
             title: vStrBasket
            ,style: .default
            ,handler: {action in self.activityBasketball(name: self.vStrBasket)}
        ))

        // 削除ボタン
        actionSheet.addAction(UIAlertAction(
             title: "ムエタイ"
            ,style: .destructive
            ,handler: {action in self.destructive()}
        ))

        // キャンセルボタン
        actionSheet.addAction(UIAlertAction(
             title: "今日はやめとく"
            ,style: .cancel
            ,handler: {action in self.cancel()}
        ))

        // アクションシートを表示
        present(
             actionSheet
            ,animated: true
            ,completion: nil
        )
    }
    
    /*  アクティビティボタンが押されたら起動する自作関数
        Activity 関数名
        name 引数（ひきすう）呼び出されたところで処理をするための情報をもらう時に使用する
        name:String 引数の型を指定
     */
    func activity(name:String){
        myLabel.text = "\(name), 行こう！"
    }
    
    // TODO:Activity関数を使ってバスケの処理を実行できるようにしてください
    func activityBasketball(name:String){
        myLabel.text = "\(name), 行こう！"
    }

    // TODO:Destructive関数を使ってムエタイの処理を実行できるようにしてください（引数不要）
    func destructive(){
        myLabel.text = "ムエタイ, 行こう！"
    }
    // TODO:Cancel関数を使って「今日はやめとく」が押された時呼び出してください（引数不要）
    func cancel(){
        myLabel.text = "明日は絶対行こう！"
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

