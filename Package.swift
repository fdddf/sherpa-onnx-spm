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
        .binaryTarget(
            name: "onnxruntime",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.2/onnxruntime.xcframework.zip",
            checksum: "af8695681d9cd917086fad37ccb95523c41878840dde28d68e38db960f221e71"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.0.2/sherpa-onnx.xcframework.zip",
            checksum: "881b5d991d18a620f7890273f4e6762f43f9a3f5bc628f4b708c146ad0cea80a"
        ),
    ]
)
