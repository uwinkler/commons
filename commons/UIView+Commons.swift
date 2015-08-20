//
//  UIView+Commons.swift
//  commons
//
//  Created by Ulrich Winkler on 20/08/15.
//  Copyright (c) 2015 Kodira. All rights reserved.
//

import Foundation

public extension UIView {
    
    public func addSubviews(views:UIView...) {
        for view in views {
            view.setTranslatesAutoresizingMaskIntoConstraints(false)
            self.addSubview(view)
        }
    }
    
    
    public func addSubviewDict(views: Dictionary<String,UIView>) {
        for view in views {
            view.1.setTranslatesAutoresizingMaskIntoConstraints(false)
            self.addSubview(view.1)
        }
    }

    
    public func addConstraints(format: String, views: [NSObject : AnyObject]) -> [AnyObject] {
        let ret = NSLayoutConstraint.constraintsWithVisualFormat(format, options: NSLayoutFormatOptions(0), metrics: nil, views: views)
        self.addConstraints(ret)
        
        return ret
    }
    
    //
    // Returns the root view
    //
    public var rootView : UIView {
        get { return UIView.rootView(self)}
    }
    
       
    //
    // Returns the root view
    //
    public class func rootView(view:UIView) -> UIView {
        if view.superview == nil {
            return view
        } else {
            return UIView.rootView(view.superview!)
        }
    }
    
    
}