/**
 *  ApplicationRouter
 *  Copyright (c) Vladislav Stanishevsky 2020
 *  MIT license - see LICENSE.md
 */

#if os(iOS)
/**
 Some application UI module.
 Incapsulates individual application functionality like onboarding, registration process, feed, etc.
 */
public protocol ApplicationModule {
    
    /**
     Shows module from target application part.
     - Parameter applicationPart: application part for showing UI module.
     */
    func show(from applicationPart: ApplicationPart)
}
#endif
