//
//  Extensions.swift
//  Snooze
//
//  Created by Praveen Gowda I V on 6/19/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

extension CALayer {
    var borderColorFromUIColor: UIColor {
        get {
            return UIColor(CGColor: self.borderColor!)
        } set {
            self.borderColor = newValue.CGColor
        }
    }
}