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
            url: "https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.13.4/onnxruntime.xcframework.zip",
            checksum: "bd5cb12fc581222d225f144c8ed568fbc4c81b3021e8dd6c60e574ff36815678"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.13.4/sherpa-onnx.xcframework.zip",
            checksum: "be904ab8da1920bf0964d9c31bcbc97c980bb582040b143a4608ccef4e8cd017"
        ),
    ]
)
