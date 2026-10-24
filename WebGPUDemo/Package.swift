// swift-tools-version: 6.2

import PackageDescription

let package = Package(
  name: "WebGPUDemo",
  dependencies: [
    .package(
      url: "https://github.com/swiftwasm/WebAPIKit.git",
      branch: "main",
    ),
    .package(
      url: "https://github.com/swiftwasm/JavaScriptKit.git",
      .upToNextMajor(from: "0.29.0"),
    ),
  ],
  targets: [
    .executableTarget(
      name: "WebGPUDemo",
      dependencies: [
        .product(name: "JavaScriptKit", package: "JavaScriptKit"),
        .product(name: "JavaScriptEventLoop", package: "JavaScriptKit"),
        .product(name: "DOM", package: "WebAPIKit"),
        .product(name: "WebGPU", package: "WebAPIKit"),
      ],
    )
  ]
)
