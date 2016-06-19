//
//  LoginViewController.swift
//  Snooze
//
//  Created by Praveen Gowda I V on 6/19/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBAction func dismissLoginVC() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}
