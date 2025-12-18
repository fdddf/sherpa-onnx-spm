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
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.12.20/onnxruntime.xcframework.zip",
            checksum: "7b1c102421485480fef63845b160a11e582507d109a6c74716389bf27e362a49"
        ),
        .binaryTarget(
            name: "sherpa_onnx",
            url: "https://github.com/fdddf/VoiceNotesBinary/releases/download/1.12.20/sherpa-onnx.xcframework.zip",
            checksum: "83f762a7f55c8106a6bd81ca4af0f8ab45ddde9c45687daebe9ffca43b0a4f15"
        ),
    ]
)
