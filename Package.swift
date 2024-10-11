// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.1.1-beta"
let baseUri = "https://storage.yandexcloud.net/videoplatform-public/player/ios-cloud-video-player-sdk/"

let playerChecksum = "2f560b2ad9ec9a78758decc869601602c8007b464c1fc6aac92d3ed9e93ee4c1"
let playerUIChecksum = "289edbbc64069aac101bde502ea0c43062e2a1d371e2b83f8244ec4ab6c12d9a"

let playerUri = "\(baseUri)\(version)/CloudVideoPlayer.xcframework.zip"
let playerUIUri = "\(baseUri)\(version)/CloudVideoPlayerUI.xcframework.zip"

let package = Package(
  name: "CloudVideoPlayerSDK",
  platforms: [
    .iOS(.v14), .tvOS(.v14)
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
