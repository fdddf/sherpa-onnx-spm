# sherpa-onnx-spm - Swift Package for Speech-to-Text

A Swift Package that provides speech-to-text functionality using Sherpa ONNX for iOS applications. This package bundles the Sherpa ONNX framework as an XCFramework for easy integration with iOS projects targeting iOS 15+.

## Overview

sherpa-onnx-spm provides an efficient, on-device speech recognition solution built on top of [Sherpa ONNX](https://github.com/k2-fsa/sherpa-onnx), which is a cross-platform speech-to-text toolkit. The package includes:

- `onnxruntime` - Microsoft's ONNX Runtime for running machine learning models
- `sherpa_onnx` - The Sherpa ONNX speech recognition library
- Pre-compiled XCFrameworks for iOS devices

## Features

- On-device speech recognition with no network connectivity required
- High-performance audio processing optimized for iOS
- Compatible with iOS 15 and later
- Easy integration via Swift Package Manager
- Lightweight and efficient for mobile applications

## Installation

To add this package to your Xcode project:

1. Open your project in Xcode
2. Go to File → Add Package Dependencies
3. Enter the repository URL: `https://github.com/fdddf/sherpa-onnx-spm.git`
4. Select the package and add it to your project

Or add it to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/fdddf/sherpa-onnx-spm.git", from: "1.12.19")
]
```

## Usage

After adding the package to your project, you can import and use the speech recognition functionality:

```swift
import sherpa_onnx_spm

// Example usage would go here
```

## Version

Current version: 1.12.19 (abbe031 - Update Package.swift for 1.12.19 (11 days ago))

## Framework Details

The package includes the following pre-compiled frameworks:
- onnxruntime (from https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.12.19/onnxruntime.xcframework.zip)
- sherpa_onnx (from https://github.com/fdddf/sherpa-onnx-spm/releases/download/1.12.19/sherpa-onnx.xcframework.zip)

## Requirements

- iOS 15.0+
- Xcode 14.0+
- Swift 5.7+

## License

This project is licensed under the terms found in the LICENSE file.
