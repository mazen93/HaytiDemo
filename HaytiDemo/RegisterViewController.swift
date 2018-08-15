//
//  RegisterViewController.swift
//  HaytiDemo
//
//  Created by tr on 8/15/18.
//  Copyright © 2018 tr. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var UserNameRegister: UITextField!
    @IBOutlet weak var EmailTfRegister: UITextField!
    @IBOutlet weak var PasswordTfRegister: UITextField!
    @IBOutlet weak var PhoneTfRegister: UITextField!
    
    var activetextfeild : UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        let center: NotificationCenter = NotificationCenter.default;
        center.addObserver(self, selector: #selector(KeyBoardDidShow(Notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        center.addObserver(self, selector: #selector(KeyBoardWillHide(Notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)

    self.UserNameRegister.delegate = self
    self.EmailTfRegister.delegate = self
    self.PasswordTfRegister.delegate = self
    self.PhoneTfRegister.delegate = self
    }
    //Hide KeyBoard Func
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // return KeyBoard
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        UserNameRegister.resignFirstResponder()
        EmailTfRegister.resignFirstResponder()
        PasswordTfRegister.resignFirstResponder()
        PhoneTfRegister.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activetextfeild = textField
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    @objc func KeyBoardDidShow(Notification: Notification) {
        let info: NSDictionary = Notification.userInfo as! NSDictionary
        let keyboardsize = (info[UIKeyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let keyboardY = self.view.frame.size.height - keyboardsize.height
        
        let editingtextfeildY: CGFloat! = activetextfeild?.frame.origin.y
        
        if self.view.frame.origin.y >= 0 {
            
        
        if editingtextfeildY > keyboardY - 100 {
            UIView.animate(withDuration: 0.25, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
                self.view.frame = CGRect(x: 0, y: self.view.frame.origin.y - (editingtextfeildY! - (keyboardY - 100)), width: self.view.bounds.width, height: self.view.bounds.height)
            }, completion: nil)
        }
        }
        
    }
    @objc func KeyBoardWillHide(Notification: Notification) {
        UIView.animate(withDuration: 0.25, delay: 0.0, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.view.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height)
        }, completion: nil)
        
    }


    


}
