// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "0.1.0-beta"
let baseUri = "https://storage.yandexcloud.net/videoplatform-public/player/ios-cloud-video-player-sdk/"

let playerChecksum = "253341a7720074deb104f0bc2c3eab4d76cfa9c4526c2a0bed45ee043054e2a3"
let playerUIChecksum = "c5642ccec07cdaf91bf595fe44c66aa29993fa6fb8c3c9b868c145a9ef127bd1"

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
