//
//  Page2ViewController.swift
//  UIPickerView練習
//
//  Created by 黃柏瀚 on 2022/3/21.
//

import UIKit

class Page2ViewController: UIViewController {
    
    @IBOutlet weak var theLabel: UILabel!
    
    var ast = ""
    var bld = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        print("星座：\(ast) 血型：\(bld)")
        
        theLabel.text = "\(ast) \(bld) 今天也很可愛"

    }
    


}
