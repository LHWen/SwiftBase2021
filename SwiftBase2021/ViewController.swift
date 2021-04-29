//
//  ViewController.swift
//  SwiftBase2021
//
//  Created by LHWen on 2021/4/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        baseMakeSwift()
    }

    // 基本语法
    func baseMakeSwift() {
        // var 定义变量， let 定义常量不可变
        var myString = "Hello, world"
        myString += "!"
        print(myString)
        
        // 分号使用
        let letString = "分号表结束，在不换行情况下"; print(letString)
    }

}

