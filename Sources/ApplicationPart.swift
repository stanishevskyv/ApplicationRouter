/**
 *  ApplicationRouter
 *  Copyright (c) Vladislav Stanishevsky 2020
 *  MIT license - see LICENSE.md
 */

#if os(iOS)
import UIKit

/**
 Protocol for application UI part.
 */
public protocol ApplicationPart {
    
    /**
     Root controller. Used for navigation in UI part.
     */
    var rootNavigationController: UINavigationController { get }
    
    /**
     Shows UI part in target window.
     
     - Parameter window: window of application. Expected behaviour if property isKeyWindow == true.
     */
    func show(inWindow window: UIWindow)
    
    /**
     Loads and shows application UI module.
     
     - Parameter module: target UI application module.
     */
    func load(module: ApplicationModule)
}
#endif
