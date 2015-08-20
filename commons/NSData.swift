//
//  NSData.swift
//
//  Created by Ulrich Winkler on 19/01/2015.
//  Copyright (c) 2015 Ulrich Winkler. All rights reserved.
//

import Foundation



public extension NSData {
    
    ///
    /// Converts "size" bytes at given location into an Int
    ///
    public func toInt (location:Int, size:Int) -> Int {
        let bytes = self.subdataWithRange(NSMakeRange(location,size)).bytes
        return UnsafePointer<Int>(bytes).memory
    }


    //
    // Converts the bytes to UInt8 Array
    //
    public func toUInt8Array () -> [UInt8] {
        var byteArray = [UInt8](count: self.length, repeatedValue: 0x0)
        self.getBytes(&byteArray, length:self.length)
        return byteArray
    }
    
    
    ///
    /// Returns a data object in 'nono' notation
    ///
    public var nono : String {
        get {
            return self.toUInt8Array().nono
        }
    }
    
    public func subdata(length:Int, andFill:UInt8) -> NSData {
       
        let l = min(self.length, length)
        
        var ret = self.subdataWithRange(NSMakeRange(0, l)).mutableCopy() as! NSMutableData
        
        var andFillRef = andFill
        
        let data = NSData(bytes: &andFillRef, length: sizeof(UInt8))
        
        for var i = l;  i < length; i = i + sizeof(UInt8) {
                ret.appendData(data)
        }
        
        return ret        
    }        

}

