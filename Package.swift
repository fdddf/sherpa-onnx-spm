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
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0.1/onnxruntime-v1.0.1.xcframework.zip",
            checksum: "762ba422d0af17c54b1491b0a92c5829469c56fabcfab08d6371fb4fad1be69a"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0.1/sherpa-onnx-v1.0.1.xcframework.zip",
            checksum: "21239bca31c5cb47e6da4e6a4e12977f2600437799e337e3b4da771881d2c9ad",
            condition: .when(platforms: [.iOS], environment: [.device])
        ),
    ]
)
