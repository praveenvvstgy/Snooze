//
//  Constants.swift
//  Snoozed
//
//  Created by Gowda I V, Praveen on 5/29/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

struct Config {
    
}

struct Color {
    static let primaryColor = UIColor(red:0.15, green:0.16, blue:0.22, alpha:1.00)
    static let secondaryColor = UIColor(red:0.40, green:0.44, blue:0.47, alpha:1.00)
    static let lighterSecondaryColor = UIColor(red:0.71, green:0.71, blue:0.72, alpha:1.00)
    static let accentColor = UIColor(red:0.71, green:0.71, blue:0.72, alpha:1.00)
    static let textColor = UIColor(red:1.00, green:1.00, blue:1.00, alpha:1.00)
}

struct Font {
    
    func boldFont(size: CGFloat) -> UIFont? {
        return UIFont(name: "Lato-Semibold", size: size)
    }
    
    func mediumFont(size: CGFloat) -> UIFont? {
        return UIFont(name: "Lato-Medium", size: size)
    }
    
    func semiboldFont(size: CGFloat) -> UIFont? {
        return UIFont(name: "Lato-Semibold", size: size)
    }
    
    func regularFont(size: CGFloat) -> UIFont? {
        return UIFont(name: "Lato-Regular", size: size)
    }
    
    func hairlineFont(size: CGFloat) -> UIFont? {
        return UIFont(name: "Lato-Hairline", size: size)
    }
    
}