// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataChannel",
    platforms: [
        .iOS(.v16),
        .macCatalyst(.v16)
    ],
    products: [
        .library(
            name: "DataChannel",
            targets: ["DataChannel", "libdatachannel"]
        ),
    ],
    targets: [
        .target(name: "DataChannel", dependencies: ["libdatachannel"]),
        .binaryTarget(name: "libdatachannel",
                      url: "https://github.com/eerimoq/xcframeworks/releases/download/libdatachannel-0.30.0/libdatachannel.xcframework.zip",
                      checksum: "d7589584a38c97da1525acf6b830877ceee95246bf27db3644e7e2e65086ce28"),
    ]
)
