//
//  BaseViewController.swift
//  BaseNavigationViewController
//
//  Created by Neil Patel on 10/21/18.
//  Copyright © 2018 Pankaj Gondaliya. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initiateNavigationForViewController()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}

//MARK: Navigation Methods
extension BaseViewController {
    func initiateNavigationForViewController() {
        // Set up any modification
        self.navigationItem.setHidesBackButton(true, animated:true);
    }
    
    func setTitle(strTitle: String) {
        self.title = strTitle
    }
    
    //Right bar button
    func setRightNavigationBarItem(strTitle: String) {
        let rightButtonItem = UIBarButtonItem.init(
            title: strTitle,
            style: .plain,
            target: self,
            action: #selector(self.rightButtonAction)
        )
        self.navigationItem.rightBarButtonItem = rightButtonItem
    }
    
    @objc func rightButtonAction() {
    }
   
    //Left bar button
    func setLeftBarButtonWithImage() {
        let button: UIButton = UIButton(type: UIButtonType.custom)
        //set image for button
        button.setImage(UIImage(named: "back"), for: UIControlState.normal)
        //add function for button
        button.addTarget(self, action: #selector(self.back), for: UIControlEvents.touchUpInside)
        //set frame
        button.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        let barButton = UIBarButtonItem(customView: button)
        //assign button to navigationbar
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    //This method will call when you press button.
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
}
