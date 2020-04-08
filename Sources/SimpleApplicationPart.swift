/**
 *  ApplicationRouter
 *  Copyright (c) Vladislav Stanishevsky 2020
 *  MIT license - see LICENSE.md
 */

#if os(iOS)
import UIKit

/**
 Simple application UI part. Can be created with UINavigationController or UIViewController.
 */
public class SimpleApplicationPart: ApplicationPart {
    
    public private (set) var rootNavigationController: UINavigationController
    
    /**
     Initializes with UINavitionController.
     UINavigationController will be as root in target window.
     */
    public init(navigationController: UINavigationController) {
        self.rootNavigationController = navigationController
    }
    
    /**
     Initializes with UIViewController which will be as root in rootNavigationController property.
     UINavigationController will be as root in target window.
     */
    public init(viewController: UIViewController) {
        self.rootNavigationController = UINavigationController(rootViewController: viewController)
    }
    
    /**
     Sets rootNavigationController property to window.rootViewController.

     - Parameter window: target application window.
     */
    public func show(inWindow window: UIWindow) {
        window.rootViewController = rootNavigationController
    }
    
    /**
     Shows target module from current application part.
     
     - Parameter module: target application module.
     */
    public func load(module: ApplicationModule) {
        module.show(from: self)
    }
}
#endif
