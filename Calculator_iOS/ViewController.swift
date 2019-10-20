//
//  ViewController.swift
//  Calculator_iOS
//
//  Created by Patryk Cyrek on 14/10/2019.
//  Copyright © 2019 Patryk Cyrek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var number: Double = 0;
    var previousNumber: Double = 0;
    var doingOperations = false;
    var operation = 0
    var result: Double = 0
    
    @IBAction func numbers(_ sender: UIButton) {
        if doingOperations == true{
            label.text = "";
            label.text = label.text!+String( sender.tag-1)
            number = Double(label.text!)!
            doingOperations = false;
        }
        
        else{
        label.text = label.text!+String( sender.tag-1)
        number = Double(label.text!)!
    }
    }
    
    @IBAction func action(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16{
            previousNumber=Double(label.text!)!;
            
            if sender.tag==12{ //Div
                label.text = "/"
            }
            else if sender.tag==13{ //Mul
                label.text = "x"
            }
            else if sender.tag==14{   //Min
                label.text = "-"
            }
            else if sender.tag==15{   //Plus
            label.text = "+"
            }
            doingOperations = true;
            
            operation = sender.tag;
        }
        else if sender.tag == 16 {
            if operation == 12{
                label.text = String(previousNumber/number)
            }
            if operation == 13{
                label.text = String(previousNumber*number)
            }
            if operation == 14{
                label.text = String(previousNumber-number)
            }
            if operation == 15{
                label.text = String(previousNumber+number)
                
            }
        }
        else if sender.tag == 11{
            label.text = "";
            previousNumber=0;
            number=0;
            operation=0;
        }
    }
    
    
    @IBOutlet weak var label: UILabel!
    
    
   
    
    
    @IBOutlet weak var dane: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

