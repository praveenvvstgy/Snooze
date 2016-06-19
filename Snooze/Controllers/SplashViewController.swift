//
//  ViewController.swift
//  Snooze
//
//  Created by Gowda I V, Praveen on 6/12/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit
import ChameleonFramework

class SplashViewController: UIViewController {

    @IBOutlet weak var loginSignupStackViewHeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    
    override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        
        if let stackView = view.viewWithTag(2) as? UIStackView {
            if view.traitCollection.verticalSizeClass == .Compact {
                stackView.axis = UILayoutConstraintAxis.Horizontal
                loginSignupStackViewHeightConstraint.constant = 72
            } else {
                stackView.axis = UILayoutConstraintAxis.Vertical
                loginSignupStackViewHeightConstraint.constant = 144
            }
        }
        
    }
}

