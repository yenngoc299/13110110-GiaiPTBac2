//
//  ViewController.swift
//  GPTBac2
//
//  Created by Anh Tuong Nguyen on 4/8/17.
//  Copyright © 2017 Anh Tuong Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var aElement: UITextField!
    @IBOutlet weak var bElement: UITextField!
    @IBOutlet weak var cElement: UITextField!
    @IBOutlet weak var numberOfResult: UILabel!
    @IBOutlet weak var labelX1: UILabel!
    @IBOutlet weak var labelX2: UILabel!
    
    private var a: Double = 0.0
    private var b: Double = 0.0
    private var c: Double = 0.0
    private var delta: Double = 0.0
    private var x1: Double = 0.0
    private var x2: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ClearAll()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func TinhToan(_ sender: UIButton) {
        a = Double(aElement.text!)!
        b = Double(bElement.text!)!
        c = Double(cElement.text!)!
        delta = b * b - 4 * a * c
        if a == 0 {
            numberOfResult.text = "Số a phải khác 0"
            aElement.text = "0"
            bElement.text = "0"
            cElement.text = "0"
        }
        else if delta > 0 {
            x1 = (-b + sqrt(delta)) / (2 * a)
            x2 = (-b - sqrt(delta)) / (2 * a)
            numberOfResult.text = "Có 2 nghiệm phân biệt"
            labelX1.text = "x = " + String(x1)
            labelX2.text = "x = " + String(x2)
        }
        else if delta == 0 {
            x1 = (-b) / (2 * a)
            numberOfResult.text = "Có nghiệm kép"
            labelX1.text = "x = " + String(x1)
            labelX2.text = ""
        }
        else if delta < 0 {
            numberOfResult.text = "Vô nghiệm"
            labelX1.text = ""
            labelX2.text = ""
        }
    }
    
    func ClearAll() {
        aElement.text = "0"
        bElement.text = "0"
        cElement.text = "0"
        numberOfResult.text = ""
        labelX1.text = ""
        labelX2.text = ""
    }
    
    @IBAction func Clear(_ sender: UIButton) {
        ClearAll()
    }
}
