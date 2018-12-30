//
//  ViewController.swift
//  mount_2
//
//  Created by student on 12/2/18.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
 
    @IBOutlet var UNLOCKED: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNLOCKED.isHidden = true
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func buttonWasPressed(_ sender: AnyObject) {
        
       UIApplication.shared.open(URL(string: "http://www.mountlocks.com/")! as URL, options: [:], completionHandler: nil)
    }

    //pin number info
    
    
    
    @IBOutlet var _pin_number: UITextField!
    @IBOutlet var _login_button: UIButton!
    
    @IBAction func LOGINBUTTON(_ sender: AnyObject) {
        
        let pin = _pin_number.text
        let actual = "5555"
        if (pin == actual)
        {
            DoLogin(num_pin: pin!)
        }
        
       
    }


    func DoLogin( num_pin:String )
    {
       UNLOCKED.isHidden = false
        
    }
    
    
    func LoginToDo()
    {
        _pin_number.isEnabled = true
        _login_button.setTitle("unlock bike!!!", for: .normal)
    }
    
    func LoginDone()
    {
       _pin_number.isEnabled = false
       
        
        _login_button.setTitle("LOCK UP", for: .normal)
    }
    
}




