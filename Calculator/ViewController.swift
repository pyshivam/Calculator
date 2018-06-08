//
//  ViewController.swift
//  Calculator
//
//  Created by pyshivam on 6/8/18.
//  Copyright © 2018 foslipy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var nextOpration = true
    
    func addNumberToInput(number: String){
        if nextOpration {
            textField.text = ""
            nextOpration = false
        }
        var got_number = textField.text!
        got_number = got_number + number
        textField.text = got_number
    }

    @IBAction func btnZero(_ sender: Any) {
        addNumberToInput(number: "0")
    }
    
    var counter = true
    @IBAction func btnDot(_ sender: Any) {
        if counter {
            addNumberToInput(number: ".")
            counter = false
        }
    }

    @IBAction func btnOne(_ sender: Any) {
        addNumberToInput(number: "1")
    }
    
    @IBAction func btnTwo(_ sender: Any) {
        addNumberToInput(number: "2")
    }
    
    @IBAction func btnThree(_ sender: Any) {
        addNumberToInput(number: "3")
    }
    
    @IBAction func btnFour(_ sender: Any) {
        addNumberToInput(number: "4")
    }
    
    @IBAction func btnFive(_ sender: Any) {
        addNumberToInput(number: "5")
    }
    
    @IBAction func bntSix(_ sender: Any) {
        addNumberToInput(number: "6")
    }
    
    @IBAction func btnSeven(_ sender: Any) {
        addNumberToInput(number: "7")
    }
    
    @IBAction func btnEight(_ sender: Any) {
        addNumberToInput(number: "8")
    }
    
    @IBAction func btnNine(_ sender: Any) {
        addNumberToInput(number: "9")
    }

    @IBAction func outClear(_ sender: Any) {
        textField.text = "0"
        nextOpration = true
        counter = true
    }
    
    var op = "+"
    var number1 = 0.0
    @IBAction func plusOP(_ sender: Any) {
        op = "+"
        nextOpration = true
        number1 = Double(textField.text!)!
        textField.text = "0"
        counter = true
        
    }
    
    
    @IBAction func minusOP(_ sender: Any) {
        op = "-"
        nextOpration = true
        number1 = Double(textField.text!)!
        textField.text = "0"
        counter = true
    }
    
    
    @IBAction func multiplicationOP(_ sender: Any) {
        op = "*"
        nextOpration = true
        number1 = Double(textField.text!)!
        textField.text = "0"
        counter = true
    }
    
    
    @IBAction func DivideOP(_ sender: Any) {
        op = "/"
        nextOpration = true
        number1 = Double(textField.text!)!
        textField.text = "0"
    }
    
    
    
    @IBAction func moduloOP(_ sender: Any) {
        op = "%"
        nextOpration = true
        number1 = Double(textField.text!)!
        textField.text = "0"
    }
    
    @IBAction func changeSign(_ sender: Any) {
        let number = Int(textField.text!)
        let number2 = number! * -1
        textField.text = String(number2)
    }
    
    
    var number2  = 0.0
    var result: Double?
    @IBAction func doOperations(_ sender: Any) {
        if textField.text! != " "{
            number2 = Double(textField.text!)!
        }else{
            return
        }
        textField.text = " "
        nextOpration = true
        switch op {
        case "+":
            result = number1 + number2
        case "-":
            result = number1 - number2
        case "*":
            result = number1 * number2
        case "/":
            result = number1 / number2
        case "%":
            result = number1.truncatingRemainder(dividingBy: number2)
        default:
            result = 0.0
        }
        textField.text = String(result!)
        counter = true
    }
    
}

