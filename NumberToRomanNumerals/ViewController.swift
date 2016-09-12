//
//  ViewController.swift
//  NumberToRomanNumerals
//
//  Created by David Thurman on 9/11/16.
//  Copyright © 2016 David Thurman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var numberToConvert: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        outputLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func romanizer(sender: AnyObject) {
        var num: Int = 0
        if let test = Int(numberToConvert.text!){
            if Int(numberToConvert.text!) <= 5000 && Int(numberToConvert.text!) > 0{
               num = Int(numberToConvert.text!)!
            }
        }

        //var num = Int(numberToConvert.text!)!
        var rem = 0
        var answer = ""
        if num > 1000 {
            rem = num % 1000
            num = num - rem
            while num != 0 {
                answer = answer + "M"
                num = num - 1000
            }
            num = rem
        }
        if num > 500 {
            rem = num % 500
            num = num - rem
            while num != 0 {
                answer = answer + "D"
                num = num - 500
            }
            num = rem
        }
        if num > 100 {
            rem = num % 100
            num = num - rem
            while num != 0 {
                answer = answer + "C"
                num = num - 100
            }
            num = rem
        }
        if num > 50 {
            rem = num % 50
            num = num - rem
            while num != 0 {
                answer = answer + "L"
                num = num - 50
            }
            num = rem
        }
        if num > 10 {
            rem = num % 10
            num = num - rem
            while num != 0 {
                answer = answer + "X"
                num = num - 10
            }
            num = rem
        }
        if num > 5 {
            rem = num % 5
            num = num - rem
            while num != 0 {
                answer = answer + "V"
                num = num - 5
            }
            num = rem
        }
        while num != 0{
            answer = answer + "I"
            num = num - 1
        }
        
        outputLabel.text = answer
    }

}

