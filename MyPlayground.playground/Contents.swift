//: Playground - noun: a place where people can play

// フレームワークの読込
// UIKit 画面上に表示するために使う部品のクラスがたくさん用意されている場所
// 消してしまうとUILabelやUIButtonなどの主要な部品が使えなくなります
import UIKit

// 変数宣言 swiftは必ず変数宣言を最初に行う（型推論）
var str = "Hello, playground";
//    str = 100;

// 定数 中身（値）が変わらない
let score = 100;
//score = 80;

/*
 Notice:
■型推論と型指定
 型推論 (var str = "Hello, playground")
 代入されているデータによってデータ型が決定
 書き方は簡単だがメモリ消費量が多い

 型推論 (var str:String = "Hello, playground")
 データを代入する前からデータ型を決定
 値を代入する前に型を宣言するためメモリ消費量を抑えられる

 変数・定数ともに途中で型が異なる値の代入は禁止
 
 */

var data:String = "100";
data = data + "1";

/*
 Notice:
 ■四則演算
 1 + 1
 1 - 1
 2 * 2
 5 / 2.0 （右辺か左辺のどちらかに小数点がある場合は答えにも小数点を含める）
 */

print(1 + 1);
print(1 - 1);
print(2 * 2);
print(5 / 2.0)
print(5 % 2)


