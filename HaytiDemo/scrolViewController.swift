//
//  scrolViewController.swift
//  HaytiDemo
//
//  Created by tr on 8/12/18.
//  Copyright © 2018 tr. All rights reserved.
//

import UIKit

class scrolViewController: UIViewController {
    
    let animation = 0.0

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var TableV: UITableView!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var tbv2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        TableV.isHidden = true
       
       
        tbv2.isHidden = true
    }

   
    @IBAction func onClickDrob(_ sender: Any) {
        if TableV.isHidden {
            animate(toogle: true)
        } else {
            animate(toogle: false)
        }
    }
        func animate(toogle:Bool) {
            if toogle {
                UIView.animate(withDuration: 0.3) {
                    self.TableV.isHidden = false
                }
                
            } else {
                UIView.animate(withDuration: 0.3) {
                    self.TableV.isHidden = true
                }
                
            }
        }
        
        
            
            
    
    
    
    @IBAction func OnClickDrob2(_ sender: Any) {
        if tbv2.isHidden {
            pubic(toogle: true)
        } else {
            pubic(toogle: false)
        }
        
        
    }
    func pubic(toogle:Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.tbv2.isHidden = false
            }
            
            
        } else {
            UIView.animate(withDuration: 0.3) {
                self.tbv2.isHidden = true
            }
            
        }
    }
    
    
    
}

