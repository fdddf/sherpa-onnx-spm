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
            url: "https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.12.20/onnxruntime.xcframework.zip",
            checksum: "7db1daba2b6f49f52ae220f460367af732068174321a7306c9b2bba3ec188414"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.12.20/sherpa-onnx.xcframework.zip",
            checksum: "57371f4f5ede01aed9b620cb35b76d7d40fc1a07be39dedde57499bc0837797b"
        ),
    ]
)
