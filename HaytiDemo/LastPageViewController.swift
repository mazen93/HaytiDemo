//
//  LastPageViewController.swift
//  HaytiDemo
//
//  Created by tr on 8/13/18.
//  Copyright © 2018 tr. All rights reserved.
//

import UIKit

class LastPageViewController: UIViewController {
    
    
    
    let Select = ["IdPass","IDVerfid"]
    let Nationalty = ["Egyption"]

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var tableView1: UITableView!
    
    @IBOutlet weak var tableView2: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView1.isHidden = true
        tableView2.isHidden = true

        
    }
   
   
    @IBAction func OnClickDrob(_ sender: Any) {
    
    if tableView1.isHidden {
            animate(toogle: true)
        } else {
            animate(toogle: false)
        }
    }
    func animate(toogle:Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.tableView1.isHidden = false
            }
            
        } else {
            UIView.animate(withDuration: 0.3) {
                self.tableView1.isHidden = true
            }
            
        }
    }
    
   
    @IBAction func OnClickDrob2(_ sender: Any) {
    
    if tableView2.isHidden {
            pubic(toogle: true)
        } else {
            pubic(toogle: false)
        }
        
        
    }
    func pubic(toogle:Bool) {
        if toogle {
            UIView.animate(withDuration: 0.3) {
                self.tableView2.isHidden = false
            }
            
            
        } else {
            UIView.animate(withDuration: 0.3) {
                self.tableView2.isHidden = true
            }
            
        }
    }
  
    
    

    
}

extension LastPageViewController:UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == tableView1 {
            return Select.count
        } else{
            return Nationalty.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        if tableView == tableView1 {
            cell.textLabel?.text = Select[indexPath.row]
            return cell
        } else {
            cell.textLabel?.text = Nationalty[indexPath.row]
            return cell
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == tableView {
            btn.setTitle("\(Select[indexPath.row])", for: .normal)
             animate(toogle: false)
            
            print(Select[indexPath.row])
        
    } else {
            
    btn2.setTitle("\(Nationalty[indexPath.row])", for: .normal)
   
    pubic(toogle: false)
    
    }
}












}
