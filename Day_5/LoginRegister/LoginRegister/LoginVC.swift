//
//  LoginVC.swift
//  LoginRegister
//
//  Created by Jigisha Patel on 2018-02-21.
//  Copyright © 2018 JK. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet var txtEmail: UITextField!
    
    @IBOutlet var txtPassword: UITextField!
    
    @IBOutlet weak var switch_label: UISwitch!
    
    var Email = ""
    var Password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnLoginAction(_ sender: UIBarButtonItem)
    
    {
    
        Email = txtEmail.text!
        Password = txtPassword.text!
        
        if (Email == "test" && Password == "test")
            
        {
        
        save_data()
        let infoAlert = UIAlertController(title: "Login Sucessful", message: "You are authenticated", preferredStyle: .alert)
        
        infoAlert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        
            self.present(infoAlert, animated: true, completion: nil)
    
        }
    }
    
    
@IBAction func btnRegisterAction(_ sender: UIBarButtonItem)

    {
        
        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let registerVC = registerSB.instantiateViewController(withIdentifier: "RegistrationScreen")
        
        //self.present(registerVC, animated: true, completion: nil)
        navigationController?.pushViewController(registerVC, animated: true)
        
    }
    
    
    // code for the remember me switch
    
    @IBAction func `switch`(_ sender: Any)
    {
        // switch_label.
        
    }
    
    
    
    // code to store the username and password.
    
    func getData()
    {
        // default.user
    }
    
    // save the user data.
    func save_data()
    {
        UserDefaults.standard.set(self.txtEmail.text, forKey: "userName")
        UserDefaults.standard.set(self.txtPassword.text, forKey: "password")
        
    }
    
}









