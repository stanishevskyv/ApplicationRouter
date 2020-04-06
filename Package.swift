// swift-tools-version:5.2

/**
 *  ApplicationRouter
 *  Copyright (c) Vladislav Stanishevsky 2020
 *  Licensed under the MIT license. See LICENSE file.
 */

import PackageDescription

let package = Package(
    name: "ApplicationRouter",
    products: [
        .library(name: "ApplicationRouter",
                 targets: ["ApplicationRouter"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "ApplicationRouter",
                path: "Sources"),
        .testTarget(name: "ApplicationRouterTests",
                    dependencies: ["ApplicationRouter"],
                    path: "Tests"),
    ]
)
