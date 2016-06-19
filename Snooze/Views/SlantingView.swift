//
//  SlantingView.swift
//  Snooze
//
//  Created by Praveen Gowda I V on 6/18/16.
//  Copyright © 2016 Gowda I V, Praveen. All rights reserved.
//

import UIKit

@IBDesignable class SlantingView: UIView {
    
    @IBInspectable var shortOffset: CGFloat = 100 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var longerEdge: String = "left" {
        didSet {
            if let edge = Direction(rawValue: longerEdge) {
                lEdge = edge
            }
        }
    }
    
    @IBInspectable var slantedEdge: String = "bottom" {
        didSet {
            if let edge = Direction(rawValue: slantedEdge) {
                sEdge = edge
            }
        }
    }
    
    @IBInspectable var longOffset: CGFloat = 0 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    @IBInspectable var slantingRectColor: UIColor = Color.primaryColor {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var sEdge: Direction = .Bottom {
        didSet {
            setNeedsDisplay()
        }
    }
    
    var lEdge: Direction = .Left {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        switch sEdge {
        case .Bottom:
            CGContextMoveToPoint(context, rect.minX, rect.minY)
            CGContextAddLineToPoint(context, rect.maxX, rect.minY)
            switch lEdge {
            case .Right:
                CGContextAddLineToPoint(context, rect.maxX, rect.maxY - longOffset)
                CGContextAddLineToPoint(context, rect.minX, rect.maxY - shortOffset)
            case .Left:
                CGContextAddLineToPoint(context, rect.maxX, rect.maxY - shortOffset)
                CGContextAddLineToPoint(context, rect.minX, rect.maxY - longOffset)
            default:
                CGContextAddLineToPoint(context, rect.maxX, rect.maxY)
                CGContextAddLineToPoint(context, rect.minX, rect.maxY)
            }
            CGContextAddLineToPoint(context, rect.minX, rect.minY)
        case .Top:
            CGContextMoveToPoint(context, rect.maxX, rect.maxY)
            CGContextAddLineToPoint(context, rect.minX, rect.maxY)
            switch lEdge {
            case .Right:
                CGContextAddLineToPoint(context, rect.minX, rect.minY + shortOffset)
                CGContextAddLineToPoint(context, rect.maxX, rect.minY + longOffset)
            case .Left:
                CGContextAddLineToPoint(context, rect.minX, rect.minY + longOffset)
                CGContextAddLineToPoint(context, rect.maxX, rect.minY + shortOffset)
            default:
                CGContextAddLineToPoint(context, rect.minX, rect.minY)
                CGContextAddLineToPoint(context, rect.maxX, rect.minY)
            }
            CGContextAddLineToPoint(context, rect.maxX, rect.maxY)
        case .Left:
            CGContextMoveToPoint(context, rect.maxX, rect.minY)
            CGContextAddLineToPoint(context, rect.maxX, rect.maxY)
            switch lEdge {
            case .Bottom:
                CGContextAddLineToPoint(context, rect.minX + longOffset, rect.maxY)
                CGContextAddLineToPoint(context, rect.minX + shortOffset, rect.minY)
            case .Top:
                CGContextAddLineToPoint(context, rect.minX + shortOffset, rect.maxY)
                CGContextAddLineToPoint(context, rect.minX + longOffset, rect.minY)
            default:
                CGContextAddLineToPoint(context, rect.minX, rect.maxY)
                CGContextAddLineToPoint(context, rect.minX, rect.minY)
            }
            CGContextAddLineToPoint(context, rect.maxX, rect.minY)
        case .Right:
            CGContextMoveToPoint(context, rect.minX, rect.minY)
            CGContextAddLineToPoint(context, rect.minX, rect.maxY)
            switch lEdge {
            case .Bottom:
                CGContextAddLineToPoint(context, rect.maxX - longOffset, rect.maxY)
                CGContextAddLineToPoint(context, rect.maxX - shortOffset, rect.minY)
            case .Top:
                CGContextAddLineToPoint(context, rect.maxX - shortOffset, rect.maxY)
                CGContextAddLineToPoint(context, rect.maxX - longOffset, rect.minY)
            default:
                CGContextAddLineToPoint(context, rect.maxX, rect.maxY)
                CGContextAddLineToPoint(context, rect.maxX, rect.minY)
            }
            CGContextAddLineToPoint(context, rect.minX, rect.minY)
        }
        CGContextSetFillColorWithColor(context, slantingRectColor.CGColor)
        CGContextFillPath(context)
    }
    
}
