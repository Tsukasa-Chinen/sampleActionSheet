//
//  ViewController.swift
//  samplePickerView
//
//  Created by Tsukasa Chinen on 2017/10/23.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit


//1.プロトコル(手段、特定の部品をあやつる能力)を追加
class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var myPickerView: UIPickerView!
    
    //データを配列で用意する。（手段、特定の部品を操る能力）
    var teaList = [
        "ダージリン"
        ,"アールグレイ"
        ,"アッサム"
        ,"オレンジペコ"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //teaList.append(“緑茶“)
        
        //5.指示を出しているのがViewControllerだと知らせる設定
        //self : 自分自身（ViewControllerのこと）
        //データーソース（表示するデータの設定支持する人）
        myPickerView.delegate = self
        
        //デリゲート（完治したイベントを委任する人、代理人（店長））
        myPickerView.delegate = self
    }
    
    //2.ピッカービューの数列を決定する
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //3.ピッカービューの行数を決定する
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teaList.count
    }
    
    //4.ピッカービューに表示する文字の設定。
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //今ピッカービューが何行目のデータを作ろうとしているか
        return teaList[row]
    }
    
    //(6.)選択された項目をデバックエリアに表示
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        //row:選択された項目が何行目か
        print(teaList[row])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
