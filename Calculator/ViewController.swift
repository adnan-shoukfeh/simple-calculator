//
//  ViewController.swift
//  Calculator
//
//  Created by Adnan Shoukfeh on 7/30/19.
//  Copyright © 2019 Adnan Shoukfeh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp = String()
    var valueOne = Double()
    var valueTwo = Double()
    var valueTotal = Double()
    
    @IBOutlet var valueOutputted: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func updateOutput() {
        valueOutputted.text = temp
    }
    
    @IBAction func decimalPressed(_ sender: UIButton) {
        temp += "."
        updateOutput()
    }
    @IBAction func zeroPressed(_ sender: UIButton) {
        temp += "0"
        updateOutput()
    }
    
    @IBAction func onePressed(_ sender: UIButton) {
        temp += "1"
        updateOutput()
    }
    
    @IBAction func twoPressed(_ sender: Any) {
        temp += "2"
        updateOutput()
    }
    
    @IBAction func threePressed(_ sender: Any) {
        temp += "3"
        updateOutput()
    }
    
    @IBAction func fourPressed(_ sender: Any) {
        temp += "4"
        updateOutput()
    }
    
    @IBAction func fivePressed(_ sender: Any) {
        temp += "5"
        updateOutput()
    }
    
    @IBAction func sixPressed(_ sender: Any) {
        temp += "6"
        updateOutput()
    }
    
    @IBAction func sevenPressed(_ sender: Any) {
        temp += "7"
        updateOutput()
    }
    
    @IBAction func eightPressed(_ sender: Any) {
        temp += "8"
        updateOutput()
    }
    
    @IBAction func ninePressed(_ sender: Any) {
        temp += "9"
        updateOutput()
    }
    
    @IBAction func changeSign(_ sender: Any) {
        if temp.contains("-") {
            temp.remove(at: temp.startIndex)
        } else {
            temp = "-" + temp
        }
        updateOutput()
    }
    
    @IBAction func modPressed(_ sender: Any) {
        var tempNum = Double(temp)
        tempNum = tempNum! / 100
        temp = "\(tempNum ?? 0)"
        updateOutput()
    }
}

