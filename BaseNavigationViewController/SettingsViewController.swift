//
//  SettingsViewController.swift
//  BaseNavigationViewController
//
//  Created by Neil Patel on 10/21/18.
//  Copyright © 2018 Pankaj Gondaliya. All rights reserved.
//

import UIKit

class SettingsViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTitle(strTitle: "Settings")
        setLeftBarButtonWithImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
