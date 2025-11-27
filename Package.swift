// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "VoiceNotesBinary",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "VoiceNotesBinary",
            targets: ["OnnxRuntime", "SherpaOnnx"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "OnnxRuntime",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v20251128/onnxruntime.xcframework.zip",
            checksum: "ad9dfc265b7259c57f58283407bf10383de045627e7c81a87ab16294a162a8a4"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v20251128/sherpa-onnx.xcframework.zip",
            checksum: "41daac3b3d1668c78a1c855068daef8d5c35690d8a1d960c68c4473779696d9d"
        ),
    ]
)
