//
//  ViewController.swift
//  BaseNavigationViewController
//
//  Created by Neil Patel on 10/21/18.
//  Copyright © 2018 Pankaj Gondaliya. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
}

//Navigationbar Methods
extension ViewController {
    
    func configureNavigationBar() {
        setTitle(strTitle: "Home")
        setRightNavigationBarItem(strTitle: "Next")
    }
    
    override func rightButtonAction() {
        print("RightClicked")
        let settingsViewController = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SettingsViewController") as? SettingsViewController
        self.navigationController?.pushViewController(settingsViewController!, animated: true)
    }
    
}
