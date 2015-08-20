//
//  UIImage+Scale.swift
//
//  Created by Ulrich Winkler on 07/01/2015.
//  Copyright (c) 2015 Ulrich Winkler. All rights reserved.
//

import Foundation
import UIKit


extension UIImage {
    
    public func scaledImage(factor:CGFloat, hasAlpha:Bool = true) -> UIImage {
        
        let size = CGSizeApplyAffineTransform(self.size, CGAffineTransformMakeScale(factor, factor))
        let scale: CGFloat = 0.0 // Automatically use scale factor of main screen
        
        UIGraphicsBeginImageContextWithOptions(size, !hasAlpha, scale)
        self.drawInRect(CGRect(origin: CGPointZero, size: size))
        
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        
        return scaledImage
    }
    
}