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
    var valueOne = String()
    var operation = String()
    
    @IBOutlet var valueOutputted: UILabel!
    
    @IBOutlet var disabledButtons: [UIButton]!
    
    @IBOutlet var moomoo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    func updateOutput() {
        moomoo.image = nil
        if temp == "" {
            valueOutputted.text = "0"
        } else if temp == "696969" {
            valueOutputted.text = temp
            moomoo.image = UIImage(named: "IMG_5580")

        } else {
            valueOutputted.text = temp
        }
    }
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        temp += sender.title(for: .normal)!
        updateOutput()
    }
    
 
    @IBAction func decimalPressed(_ sender: UIButton) {
        if !temp.contains(".") {
            temp += "."
            updateOutput()
        }
    }
    
   /*
    @IBAction func justforshits(_ sender: UIButton) {
        if true {
            temp = "HEHE"
        }
        
        if !true {
            temp = "YeehAAW"
        }
        updateOutput()
    }
 */
    
    /*
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
 */
 
    @IBAction func clearPressed(_ sender: UIButton) {
        operation = String()
        valueOne = String()
        temp = String()
        updateOutput()
        changeButtons(enabled: true)
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
    
    
    @IBAction func operationPressed(_ sender: UIButton) {
        valueOne = temp
        temp = ""
        operation = sender.title(for: .normal)!
        updateOutput()
        changeButtons(enabled: true)
    }
    
    
    @IBAction func equalPressed(_ sender: UIButton) {
        
        let totalNum: Double
        if !valueOne.isEmpty {
            switch operation {
            case "+":
                totalNum = Double(valueOne)! + Double(temp)!
            case "-":
                totalNum = Double(valueOne)! - Double(temp)!
            case "x":
                totalNum = Double(valueOne)! * Double(temp)!
            case "/":
                totalNum = Double(valueOne)! / Double(temp)!
            default:
                totalNum = Double(temp)!
            }//switch
        }//if
        else {
            totalNum = Double(temp)!
        }//else
        temp = String(totalNum)
        updateOutput()
        changeButtons(enabled: false)
    }//func
    
    
    func changeButtons(enabled: Bool) {
        for button in disabledButtons {
            button.isEnabled = enabled
        }
    }
    
    /*
    @IBAction func additionPressed(_ sender: UIButton) {
        valueOne = temp
        temp = ""
        operation = "+"
    }
    */
    
    
}

