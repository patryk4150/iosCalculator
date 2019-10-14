//
//  ViewController.swift
//  Calculator_iOS
//
//  Created by Patryk Cyrek on 14/10/2019.
//  Copyright © 2019 Patryk Cyrek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var zmienna: String = "";
    
    @IBAction func jeden(_ sender: UIButton) {
    }
    
    @IBAction func dwa(_ sender: UIButton) {
    }
    
    @IBAction func trzy(_ sender: UIButton) {
    }
    
    @IBAction func cztery(_ sender: UIButton) {
    }
    
    @IBAction func piec(_ sender: UIButton) {
    }
    
    @IBAction func szesc(_ sender: UIButton) {
    }
    
    @IBAction func siedem(_ sender: UIButton) {
    }
    
    @IBAction func osiem(_ sender: UIButton) {
        self.zmienna = "8"!;
    }
    @IBAction func dziewiec(_ sender: UIButton) {
        self.zmienna = "9"!;
    }
    
    @IBAction func dodaj(_ sender: UIButton) {
    }
    
    @IBAction func odejmij(_ sender: UIButton) {
    }
    
    @IBAction func mnoz(_ sender: UIButton) {
    }
    
    @IBAction func dziel(_ sender: UIButton) {
    }
    
    @IBAction func licz(_ sender: UIButton) {
    }
    @IBAction func kasuj(_ sender: UIButton) {
    }
    
    @IBOutlet weak var przycisk: UIButton!
    var zmienna: String = "";
    
    @IBAction func doWork(sender:UIButton){
        print(self.dane.text);
        self.zmienna = self.dane.text!;

    }
    
    
    
    @IBOutlet weak var dane: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

