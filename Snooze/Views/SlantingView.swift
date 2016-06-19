//
//  SlantingView.swift
//  Snooze
//
//  Created by Praveen Gowda I V on 6/18/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

class SlantingView: UIView {
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextMoveToPoint(context, rect.minX, rect.minY)
        CGContextAddLineToPoint(context, rect.maxX, rect.minY)
        CGContextAddLineToPoint(context, rect.maxX, rect.maxY)
        CGContextAddLineToPoint(context, rect.minX, rect.maxY - 100)
        CGContextAddLineToPoint(context, rect.minX, rect.minY)
        CGContextSetFillColorWithColor(context, Color.primaryColor.CGColor)
        CGContextFillPath(context)
    }
    
}
