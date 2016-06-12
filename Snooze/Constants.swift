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