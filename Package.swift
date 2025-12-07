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
            targets: ["VoiceNotesBinary"]
        ),
    ],
    targets: [
        .target(
            name: "VoiceNotesBinary",
            dependencies: ["onnxruntime", "sherpa_onnx"],
            path: "Sources/VoiceNotesBinary"
        ),
        .binaryTarget(
            name: "onnxruntime",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.12.19/onnxruntime.xcframework.zip",
            checksum: "457f627952efa07a6129bbed17f1142edc7cbd2af5ed9f16d688a77e67821c8b"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.12.19/sherpa-onnx.xcframework.zip",
            checksum: "47946ec264e3ee039f2ea9beedd1db9e908dfb6bf257063d5badd89d9c389cf6"
        ),
    ]
)
