// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.1.6"
let baseUri = "https://storage.yandexcloud.net/videoplatform-public/player/ios-cloud-video-player-sdk/"

let playerChecksum = "6e32ee83b53b61a94b66eba09c8e6aabf172f01c213300e0875a494e93642c23"
let playerUIChecksum = "00e869bef181d821cf651c6cab4e8e3463d250870c7874d7559b38d2ad221ae2"

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
