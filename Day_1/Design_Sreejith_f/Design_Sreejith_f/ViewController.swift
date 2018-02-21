//
//  ViewController.swift
//  Design_Sreejith	f
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 ST. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var name_label: UILabel!
    
   
    @IBOutlet weak var email_label: UILabel!
    
    @IBOutlet weak var txt_Name: UITextField!
    
    @IBOutlet weak var email_text: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBAction func Submit_button(_ sender: UIButton)
    
    {
        let name = txt_Name.text
        name_label.text = name
    }
    
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

