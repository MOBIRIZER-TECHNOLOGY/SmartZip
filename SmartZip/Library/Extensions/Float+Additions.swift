//
//  Float+Additions.swift
//
//  Created by Anish Kumar on 30/03/16.
//  Copyright © 2016 Modi. All rights reserved.
//

import Foundation
// MARK: - Float Extension
public extension Float {
    /**
     Absolute value.
     
     - returns: fabs(self)
     */
    func abs () -> Float {
        return Swift.abs(self)
    }
    
    /**
     Squared root.
     
     - returns: sqrtf(self)
     */
    func sqrt () -> Float {
        return sqrtf(self)
    }
    
    /**
     Rounds self to the largest integer <= self.
     
     - returns: floorf(self)
     */
    func floor () -> Float {
        return floorf(self)
    }
    
    /**
     Rounds self to the smallest integer >= self.
     
     - returns: ceilf(self)
     */
    func ceil () -> Float {
        return ceilf(self)
    }
    
    /**
     Rounds self to the nearest integer.
     
     - returns: roundf(self)
     */
    func round () -> Float {
        return roundf(self)
    }
    
    /**
     Clamps self to a specified range.
     
     - parameter min: Lower bound
     - parameter max: Upper bound
     - returns: Clamped value
     */
    func clamp (min: Float, _ max: Float) -> Float {
        return Swift.max(min, Swift.min(max, self))
    }
    
    /**
     Random float between min and max (inclusive).
     
     - parameter min:
     - parameter max:
     - returns: Random number
     */
    static func random(min: Float = 0, max: Float) -> Float {
        let diff = max - min;
        let rand = Float(arc4random() % (UInt32(RAND_MAX) + 1))
        return ((rand / Float(RAND_MAX)) * diff) + min;
    }
}