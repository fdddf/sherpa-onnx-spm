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
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0/onnxruntime.xcframework.zip",
            checksum: "ae7f50821b912a26ff3a102e1efefd583135bdee96ed5f2c8bcb44fcb053a456"
        ),
        .binaryTarget(
            name: "SherpaOnnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/v1.0/sherpa-onnx.xcframework.zip",
            checksum: "00e33ffe276c8a48cf9db42212d1b7fd453330b796fab7b01cb3f0b7d541d99b"
        ),
    ]
)
