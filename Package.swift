// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.1.7"
let baseUri = "https://storage.yandexcloud.net/videoplatform-public/player/ios-cloud-video-player-sdk/"

let playerChecksum = "9669523e8b4899227b02e7e4a97c0a7838c553dc673b7e415a4d62ad5db3670f"
let playerUIChecksum = "ee4a0ee214873251bac9f094776563cc7fbbebe1482dc4c843f1c79843125ab8"

let playerUri = "\(baseUri)\(version)/CloudVideoPlayer.xcframework.zip"
let playerUIUri = "\(baseUri)\(version)/CloudVideoPlayerUI.xcframework.zip"

let package = Package(
  name: "CloudVideoPlayerSDK",
  platforms: [
    .iOS(.v15), .tvOS(.v15)
  ],
  products: [
    .library(name: "CloudVideoPlayer", targets: ["CloudVideoPlayer"]),
    .library(name: "CloudVideoPlayerUI", targets: ["CloudVideoPlayerUI"])
  ],
  dependencies: [ ],
  targets: [
    .binaryTarget(name: "CloudVideoPlayer", url: playerUri, checksum: playerChecksum),
    .binaryTarget(name: "CloudVideoPlayerUI", url: playerUIUri, checksum: playerUIChecksum)
  ]
)
