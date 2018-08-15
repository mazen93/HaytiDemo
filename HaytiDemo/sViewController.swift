//
//  sViewController.swift
//  HaytiDemo
//
//  Created by tr on 8/14/18.
//  Copyright © 2018 tr. All rights reserved.
//

import UIKit

class sViewController: UIViewController {
    var imageArray = [UIImage]()
    

    @IBOutlet weak var MainScrolView: UIScrollView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       MainScrolView.frame = view.frame

    imageArray = [#imageLiteral(resourceName: "GG"),#imageLiteral(resourceName: "GG"),#imageLiteral(resourceName: "GG"),#imageLiteral(resourceName: "QQ"),#imageLiteral(resourceName: "QQ"),#imageLiteral(resourceName: "Cucumbers"),#imageLiteral(resourceName: "AA")]
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
//            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds=true
            imageView.image = imageArray[i]
            imageView.contentMode = .top
            let xPostion = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPostion, y: 0, width: self.MainScrolView.frame.width, height: self.MainScrolView.frame.height)
            MainScrolView.contentSize.width = MainScrolView.frame.width * CGFloat(i + 1)
            MainScrolView.addSubview(imageView)
        }
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
