//
//  ViewController.swift
//  HaytiDemo
//
//  Created by tr on 8/12/18.
//  Copyright © 2018 tr. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{
    @IBOutlet weak var UserNameRegister: UITextField!
    @IBOutlet weak var EmailTfRegister: UITextField!
    
    @IBOutlet weak var PasswordTfRegister: UITextField!
    
    @IBOutlet weak var PhoneNumber: UITextField!
    
    @IBOutlet weak var update: UILabel!
    
  
        
    
    @IBAction func button(_ sender: Any) {
        update.alpha=1
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.updateLabel.alpha = 0
        }
        
    }
    
    
    
    func BackgroundProcess() {
        DispatchQueue.global(qos: .background).async {
            //background code
            DispatchQueue.main.async {
                // self.activityIndicatorCall()
            
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

