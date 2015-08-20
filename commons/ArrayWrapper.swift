//
//  ArrayWrapper.swift
//
//  Created by Ulrich Winkler on 19/02/2015.
//  Copyright (c) 2015 Ulrich Winkler. All rights reserved.
//

import Foundation

public class ArrayWrapper<T> {
    
    
    
    // Arrays have a strange copy by value semantics. In order to send a reference to an array around use this wrapper
    //
    public var array : Array<T>?
    
}
