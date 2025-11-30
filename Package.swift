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
            checksum: "d5a34bb11842a56c08f00803500e1dd6b41bb7b19fd1de68d5599075bd31ab19"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0.1/sherpa-onnx-v1.0.1.xcframework.zip",
            checksum: "c2026d37f4eab0490a91b9bbd338109d1174c38bfc810b6adf3e27fab8a75fbf",
            condition: .when(platforms: [.iOS], environment: [.device])
        ),
    ]
)
