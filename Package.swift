// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GLAppBase",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GLAppBase",
            targets: ["GLAppBase"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/SwiftGFX/SwiftMath", from: "3.2.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GLAppBase",
            dependencies: [ "SwiftMath" ]),
        .testTarget(
            name: "GLAppBaseTests",
            dependencies: ["GLAppBase"]),
    ]
)

#if os(Android) || os(Linux)
package.targets[0].swiftSettings = [.define("NOSIMD")]
#endif

#if os(Linux)
package.dependencies.append(.package(url: "https://github.com/sakrist/COpenGL.swift.git", from:"1.0.7"))
package.dependencies.append(.package(url: "https://github.com/sakrist/CX11.swift.git", from:"1.0.5"))
package.targets[0].dependencies += [ "COpenGL", "CX11" ]
#endif
