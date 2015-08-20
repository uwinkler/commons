//
//  Array.swift
//  Monteverdi
//
//  Created by Ulrich Winkler on 09/01/2015.
//  Copyright (c) 2015 Ulrich Winkler. All rights reserved.
//

import Foundation


extension Array {

    mutating func removeObject(obj: NSObject) {
        var idx = -1
        for var i = 0; i < self.count; i++ {
            if self[i] as! NSObject == obj {
                idx = i
                break
            }
        }
        if idx > -1 {
            self.removeAtIndex(idx)
        }
    }


    mutating func appendAll(array: Array) {
        for obj in array {
            self.append(obj)
        }
    }

  
    //
    // Simulate simple FIFO and STACK queue operations
    //
    mutating func pop() -> T? {
        return self.count > 0 ? self.removeAtIndex(0) : nil
    }

    mutating func push(obj: T) {
        self.insert(obj, atIndex: 0)
    }

    mutating func add(obj: T) {
        self.append(obj)
    }

    mutating func peek() -> T? {
        return self.first
    }

    var nono: String {

        get {
            var ret = ""

            for var i = 0; i < self.count; i++ {

                if i % 4 == 0 {
                    ret += "\n\t\(i)\t"
                }

                ret += NSString(format: "0x%.2X ", self[i] as! UInt8) as String
            }

            return ret;
        }
    }
}
