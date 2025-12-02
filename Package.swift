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
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.12.18/onnxruntime.xcframework.zip",
            checksum: "a2b3ecd79151a9ffb429fb80e0d57c1d2b5a6420f468a773004bfb1a8f5fb60b"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.12.18/sherpa-onnx.xcframework.zip",
            checksum: "00cf100fe7a0608ee55596d7fc845f0f308bf088f77b40b883735c798b2edd19"
        ),
    ]
)
