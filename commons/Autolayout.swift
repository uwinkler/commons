//
//  Autolayout.swift
//  commons
//
//  Created by Ulrich Winkler on 20/08/15.
//  Copyright (c) 2015 Kodira. All rights reserved.
//

import Foundation


public class Autolayout {
    
    public class func constraints(format: String, views: [NSObject : AnyObject]) -> [AnyObject] {
        return NSLayoutConstraint.constraintsWithVisualFormat(format, options: NSLayoutFormatOptions(0), metrics: nil, views: views)
    }

    
    public class func contstraintsSameWidth(src:UIView, target:UIView) -> [NSLayoutConstraint] {
        let leftConstraint = NSLayoutConstraint(item:target, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: src, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0)
        let rightConstraint = NSLayoutConstraint(item: target, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: src, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0)
        
        return [leftConstraint, rightConstraint]
    }

}