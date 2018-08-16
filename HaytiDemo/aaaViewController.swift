//
//  aaaViewController.swift
//  HaytiDemo
//
//  Created by tr on 8/16/18.
//  Copyright © 2018 tr. All rights reserved.
//

import UIKit

class aaaViewController: UIViewController {

    @IBOutlet weak var update: UILabel!
    @IBAction func button(_ sender: Any) {
        update.alpha=1
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.update.alpha = 0
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
