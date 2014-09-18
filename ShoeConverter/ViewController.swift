//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Paulo Vale on 18/09/14.
//  Copyright (c) 2014 onionsoup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var mensShoeSizeTextField : UITextField
    @IBOutlet var mensConvertedShoesSizeLabel : UILabel
    
    @IBOutlet var womensShoeSizeTextField : UITextField
    @IBOutlet var womensConvertedShoesSizeLabel : UILabel

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender : AnyObject) {
        
        let sizeFromTextField = mensShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        let convertionConstant = 30
        integerFromTextField += convertionConstant
        mensConvertedShoesSizeLabel.hidden=false
        let stringWithUpdatedShoeSize = "\(integerFromTextField)" + " in European shoe size."
        mensConvertedShoesSizeLabel.text = stringWithUpdatedShoeSize
        
    }
    @IBAction func convertWButtonPressed(sender : UIButton) {
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let convertionConstant = 30.5
        womensConvertedShoesSizeLabel.hidden=false
        womensConvertedShoesSizeLabel.text = "\(sizeFromTextField + convertionConstant)" + " in European shoe size"
    }

}

