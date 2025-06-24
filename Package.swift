// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZFPlayer",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ZFPlayer", targets: ["ZFPlayer"]),
        .library(name: "ZFPlayerControl", targets: ["ZFPlayerControl"]),
    ],
    targets: [
        .target(
            name: "ZFPlayer",
            dependencies: [],
            path: "ZFPlayer",
            sources: ["Core"],
            cSettings: [
                .headerSearchPath("Core"),
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreTelephony"),
            ],
        ),
        .target(
            name: "ZFPlayerControl",
            dependencies: ["ZFPlayer"],
            path: "ZFPlayerControl",
            sources: ["ControlView"],
            resources: [.process("Resources")],
            cSettings: [
                .headerSearchPath("ControlView"),
            ],
            linkerSettings: [
                .linkedFramework("UIKit"),
                .linkedFramework("Foundation"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("AVKit"),
                .linkedFramework("CoreTelephony"),
            ],
        ),
    ]
)
