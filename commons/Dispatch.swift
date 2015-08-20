//
//  Dispatch.swift
//
//  Created by Ulrich Winkler on 20/08/15.
//  Copyright (c) 2015 Kodira. All rights reserved.
//

import Foundation


public class Dispatch {
    
    public class func delay (delay:Double, cb:()->()) {
        let delta = dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC)))
        let queue = dispatch_get_main_queue()
        dispatch_after(delta, queue) {
            cb()
        }
    }
    
    public class func async ( cb:()->() ) {
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), { () -> Void in
            cb()
        })
    }

    
}