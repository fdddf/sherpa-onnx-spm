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
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0.1/onnxruntime.xcframework.zip",
            checksum: "8fa867c8cd94abede852653546df95096c8292eca79aa0c4247308b1e06c57c6"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0.1/sherpa-onnx.xcframework.zip",
            checksum: "ed9f32e1511675f429c83de7a6f3f97d522a222ce954838f2dceec778ddaa4d3"
        ),
    ]
)
