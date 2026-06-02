// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "sherpa-onnx-spm",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "sherpa-onnx-spm",
            targets: ["sherpa-onnx-spm"]
        ),
    ],
    targets: [
        .target(
            name: "sherpa-onnx-spm",
            dependencies: ["onnxruntime", "sherpa_onnx"],
            path: "Sources/sherpa-onnx-spm"
        ),
        .binaryTarget(
            name: "onnxruntime",
            url: "https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.13.2/onnxruntime.xcframework.zip",
            checksum: "f2052998f370ae34e4c1d8427920e88ff1b66eb0cefc93cb26d2d793c7726075"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.13.2/sherpa-onnx.xcframework.zip",
            checksum: "f97867ff963ae663599c37b28dfec97d3fb0d5cd9c7fa4bb675aceb0f8d8a135"
        ),
    ]
)
