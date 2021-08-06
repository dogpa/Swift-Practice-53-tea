//
//  ViewController.swift
//  Swift Practice # 53 tea
//
//  Created by CHEN PEIHAO on 2021/8/6.
//

import UIKit

class ViewController: UIViewController {

    
    
    //飲料名稱
    @IBOutlet weak var teaNameSegmentedController: UISegmentedControl!
    //提袋開關
    @IBOutlet weak var bagSwitch: UISwitch!
    
    //顯示內容
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sugarCheck(_ sender: UISegmentedControl) {
        
        var sugar = 0
        var teaName = ""
        var bagWarning = ""
        
        if teaNameSegmentedController.selectedSegmentIndex == 0 {
            teaName = "紅茶瑪其朵"
            if sender.selectedSegmentIndex == 0 {
                sugar = 142
            }else if sender.selectedSegmentIndex == 1 {
                sugar = 178
            }else if sender.selectedSegmentIndex == 2 {
                sugar = 202
            }else if sender.selectedSegmentIndex == 3 {
                sugar = 226
            }else if sender.selectedSegmentIndex == 4 {
                sugar = 250
            }else{
                sugar = 262
            }
        } else if teaNameSegmentedController.selectedSegmentIndex == 1 {
            teaName = "波霸奶茶"
            if sender.selectedSegmentIndex == 0 {
                sugar = 293
            }else if sender.selectedSegmentIndex == 1 {
                sugar = 317
            }else if sender.selectedSegmentIndex == 2 {
                sugar = 333
            }else if sender.selectedSegmentIndex == 3 {
                sugar = 349
            }else if sender.selectedSegmentIndex == 4 {
                sugar = 365
            }else{
                sugar = 373
            }
        }else {
            teaName = "烏龍"
            if sender.selectedSegmentIndex == 0 {
                sugar = 110
            }else if sender.selectedSegmentIndex == 1 {
                sugar = 146
            }else if sender.selectedSegmentIndex == 2 {
                sugar = 170
            }else if sender.selectedSegmentIndex == 3 {
                sugar = 194
            }else if sender.selectedSegmentIndex == 4 {
                sugar = 218
            }else{
                sugar = 230
            }
        }
        
        if bagSwitch.isOn == true {
            bagWarning = "請愛惜地球！！"
        }
        if bagSwitch.isOn == false{
            bagWarning = ""
        }
        
        resultLabel.text =  "\(bagWarning) 你點的飲料 \(teaName) 熱量為 \(sugar) 大卡"
        
        
    }
    
    
    
}

