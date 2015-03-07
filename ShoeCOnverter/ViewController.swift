//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Geoff Leavitt on 3/6/15.
//  Copyright (c) 2015 Creative Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextFeld: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton)
    {
        //refactored these lines once functionality was verifed - created cleaner code
//        let sizeFromTextField = mensShoeSizeTextFeld.text
//        let numberFromTextField = sizeFromTextField.toInt()
//        var integerFromTextField = numberFromTextField!
        
        let sizeFromTextField = mensShoeSizeTextFeld.text.toInt()!
        mensConvertedShoeSizeLabel.hidden = false
        
        let conversionConstant = 30
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in EU Shoe Size"
        
        //refactored these lines once functionality was verified - created cleaner code
//        integerFromTextField += conversionConstant
//        let stringWithUpdatedShoeSize = "\(integerFromTextField)"
//        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        
        mensShoeSizeTextFeld.text = ""
        mensShoeSizeTextFeld.resignFirstResponder()
    }
    
    @IBAction func convertWomensButtonPressed(sender: UIButton)
    {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        womensConvertedShoeSizeLabel.hidden = false
        
        let conversionConstant = 30.5
        
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in EU Shoe Size"
        
        womensShoeSizeTextField.text = ""
        womensShoeSizeTextField.resignFirstResponder()
    }
    
    
}

