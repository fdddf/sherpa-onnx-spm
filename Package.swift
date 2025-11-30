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
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0.2/onnxruntime.xcframework.zip",
            checksum: "fdecc0286f7bd37240bc13b4d3ec85efd2a973c226690b2d7ab1d1f80e05b81e"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0.2/sherpa-onnx.xcframework.zip",
            checksum: "aed1437514f165924e5ee3f01638a8cb98be72d6fa54f6a65f327daef8ba9f14",
            condition: .when(platforms: [.iOS], environment: [.device])
        ),
    ]
)
