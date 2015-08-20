//
//  String.swift
//  commons
//
//  Created by Ulrich Winkler on 20/08/15.
//  Copyright (c) 2015 Kodira. All rights reserved.
//

import Foundation

public extension String {
    
    public var length : Int {
        get { return count(self) }
    }
    
    //    The substring() method extracts the characters from a string, between two specified indices, and returns the new sub string.
    public func substring ( startIndex : Int, endIndex: Int ) -> String {
        let x =  self.substringWithRange(Range<String.Index>(start: advance(self.startIndex, startIndex), end: advance(self.startIndex, endIndex)))
        return x
    }
}