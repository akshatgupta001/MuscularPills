//
//  ViewController.swift
//  muscular pills
//
//  Created by Akshat Gupta on 19/12/16.
//  Copyright © 2016 Akshat Gupta. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var CityButton: UIButton!
    @IBOutlet weak var CityPicker: UIPickerView!
    
    let states = ["Delhi","Mumbai","Chennai" ,"Pune","Kashmir","Kerela","Goa","Madhya Pradesh" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CityPicker.dataSource = self
        CityPicker.delegate = self
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func CityButtonPressed(_ sender: Any) {
        CityPicker.isHidden = false
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        CityButton.setTitle(states[row], for: UIControlState.normal)
        CityPicker.isHidden = true
    }
}

