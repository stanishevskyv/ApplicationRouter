/**
 *  ApplicationRouter
 *  Copyright (c) Vladislav Stanishevsky 2020
 *  MIT license - see LICENSE.md
 */

#if os(iOS)
import UIKit

/**
 Class for routing in application between some application parts.
 */
public class ApplicationRouter: Router {

    public typealias UIPart = ApplicationPart
    
    public private(set) var currentPart: ApplicationPart
    
    /**
     Main application window. Should be visible.
     */
    public let mainWindow: UIWindow
    
    /**
     Initializes router with initial applicationPart and shows it.
     Also creates new window and makes it as keyWindow and visible.
     - Parameter initialPart: initial application part.
     */
    public init(initialPart: ApplicationPart) {
        self.currentPart = initialPart
        self.mainWindow = UIWindow(frame: UIScreen.main.bounds)
        self.mainWindow.makeKeyAndVisible()
        showOnMainWindow(applicationPart: initialPart)
    }
    
    /**
     Initializes router with initial applicationPart and window.
     Immediately showing target application part in target window.
     
     - Parameters:
        - initialPart: initial application part.
        - mainWindow: main application window for loading application parts. Should be visible.
     */
    public init(initialPart: ApplicationPart, mainWindow: UIWindow) {
        self.currentPart = initialPart
        self.mainWindow = mainWindow
    }
    
    
    /**
     Set target part to property currentPart.
     Shows target part on the main window.
     
     - Parameter part: target application part.
     */
    public func load(part: ApplicationPart) {
        self.currentPart = part
        showOnMainWindow(applicationPart: part)
    }
    
    private func showOnMainWindow(applicationPart: ApplicationPart) {
        applicationPart.show(inWindow: mainWindow)
    }
}
#endif
