//
//  ViewController.swift
//  UIPickerView練習
//
//  Created by 黃柏瀚 on 2022/3/18.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var thePickerView: UIPickerView!
    
    var astrological =
    ["請選擇星座","白羊座","金牛座","雙子座","巨蟹座","獅子座","處女座","天秤座","天蠍座","射手座","摩羯座","水瓶座","雙魚座"]
    var bloudType = ["請選擇血型","A型","B型","O型","AB型"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        thePickerView.dataSource = self
        thePickerView.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? Page2ViewController{
            vc.ast = astrological[thePickerView.selectedRow(inComponent: 0)]
            vc.bld = bloudType[thePickerView.selectedRow(inComponent: 1)]
        }
            
    }
    
    
    //MARK:UIPickerViewDatasource & Delegate
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        switch component {
        case 0:
            return astrological.count
        case 1:
            return bloudType.count
        default:
            return 0
        }
        
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return astrological[row]
        case 1:
            return bloudType[row]
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView.selectedRow(inComponent: 0) != 0 &&
            pickerView.selectedRow(inComponent: 1) != 0{
        
        performSegue(withIdentifier: "goPage2", sender: self)
            
        }
    }
    
     
    
}

