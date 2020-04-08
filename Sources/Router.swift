/**
 *  ApplicationRouter
 *  Copyright (c) Vladislav Stanishevsky 2020
 *  MIT license - see LICENSE.md
 */

/**
 Protocol used for routing between some UI parts.
 Router contains current UI part and can load and show other parts.
 */
public protocol Router {
    
    /**
     Abstract UI part for routing.
     */
    associatedtype UIPart
    
    /**
     Current part. Should be visible on UI stack.
     */
    var currentPart: UIPart { get }
    
    /**
     Loads and shows target UI part.
     
     - Parameter part: Target UI part. Should be visible on UI stack and set as currentPart.
     */
    func load(part: UIPart)
}
