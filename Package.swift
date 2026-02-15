// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Webrtc",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "Webrtc",
            targets: ["Webrtc", "libdatachannel"]
        ),
    ],
    targets: [
        .target(name: "Webrtc", dependencies: ["libdatachannel"]),
        .binaryTarget(name: "libdatachannel",
                      url: "https://github.com/eerimoq/libdatachannel-xcframework/releases/download/v0.27.0/libdatachannel.xcframework.zip",
                      checksum: "688f43c0c1394c2edd85be41186fcf3a486128c3bf77439be5fa7def843d27a9"),
    ]
)
