//
//  pViewController.swift
//  HaytiDemo
//
//  Created by tr on 8/14/18.
//  Copyright © 2018 tr. All rights reserved.
//

import UIKit

class pViewController: UIViewController, UIPageViewControllerDataSource {
    
    var pageViewController: UIPageViewController?
    let Contentimages = ["AA","BB","CC"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        createPageViewController()
        setpagecontroller()
    }
    func createPageViewController () {
        let pageController = self.storyboard?.instantiateViewController(withIdentifier: "PageController") as! UIPageViewController
        pageController.dataSource = self
        if Contentimages.count > 0 {
            let firstcontroller = getitemcontroller(0)!
            let StartingViewController = [firstcontroller]
            pageController.setViewControllers(StartingViewController, direction: UIPageViewControllerNavigationDirection.forward ,animated: false , completion: nil)
            
      
        }
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController?.didMove(toParentViewController: self)
        
        
    }
    func setpagecontroller() {
        let apperence = UIPageControl.appearance()
        apperence.pageIndicatorTintColor = UIColor.gray
        apperence.currentPageIndicatorTintColor =  UIColor.white
        apperence.backgroundColor = UIColor.darkGray
        
        
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let itemController = viewController as! ItemViewController
        if itemController.itemIndex > 0 {
            return getitemcontroller(itemController.itemIndex-1)
        }
        return nil
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let itemcontroller = viewController as! ItemViewController
        if itemcontroller.itemIndex+1 < Contentimages.count {
            return getitemcontroller(itemcontroller.itemIndex+1)
        }
        return nil
    }
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return Contentimages.count
    }
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    func Currentcontrollerindex () -> Int {
        let pageitemcontrol = self.currentcontroller()
        if let controller = pageitemcontrol as? ItemViewController{
            return controller.itemIndex
        }
        return -1
    }
   
    func currentcontroller() -> UIViewController? {
        if (self.pageViewController?.viewControllers?.count)! > 0 {
            return (self.pageViewController?.viewControllers![0])!
        }

    return nil
    }

    func getitemcontroller(_ itemindex: Int) -> ItemViewController? {
        if itemindex < Contentimages.count {
            let pageitemcontroller = storyboard?.instantiateViewController(withIdentifier: "itemController") as! ItemViewController
            pageitemcontroller.itemIndex = itemindex
            pageitemcontroller.imageName = Contentimages[itemindex]
            return pageitemcontroller
            
            
        }
        return nil
        
    }
    
    
   
    

    
}

