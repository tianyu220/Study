//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by 田宇 on 2018/4/21.
//  Copyright © 2018年 田宇. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var celsiusLable: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Con load done")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let color = self.view.backgroundColor?.cgColor
        print("Con load done \(color!)")
    }
    
    //华氏温度
    var fahrenHeitValues: Double?{
        didSet{
            updateCelsiusLable()
        }
    }
    //摄氏温度
    var celsiusValues: Double?{
        if let value = fahrenHeitValues{
            return (value - 32) * (5/9)
        }else{
            return nil
        }
    }
    
    //温度转换
    func updateCelsiusLable(){
        if let value = celsiusValues {
            celsiusLable.text = numberFormatter.string(for: value)
        }else{
            celsiusLable.text = "???"
        }
    }
    
    //格式转换
    let numberFormatter: NumberFormatter = {
       let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    //textfield数字变化事件
    @IBAction func fahrenHeitFieldEditingChanged(textField: UITextField){
//        celsiusLable.text = textField.text
        if let text = textField.text, let value = Double(text){
            fahrenHeitValues = value
        }else{
            fahrenHeitValues = nil
        }
    }
    
    //关闭键盘
    @IBAction func dismissKeyboard(sender: AnyObject){
        textField.resignFirstResponder()
    }
    
    //委托
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //只能输入一个小数点
        let curren = textField.text?.range(of: ".")
        let replace = string.range(of: ".")
        if curren != nil && replace != nil {
            return false
        }else{
            return true
        }
        
        //禁止输入字母
     
    }
}
