// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "KSCrash",
    products: [
        .library(
            name: "KSCrash",
            targets: [
                "KSCrash"
            ]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "KSCrash",
            path: "Source/KSCrash",
            publicHeadersPath: ".",
            cxxSettings: [
                .headerSearchPath("Recording"),
                .headerSearchPath("Recording/Monitors"),
                .headerSearchPath("Recording/Tools"),
                .headerSearchPath("Reporting/Filters"),
                .headerSearchPath("Reporting/Sinks"),
                .headerSearchPath("Reporting/Tools"),
                .headerSearchPath("Tools"),
                .headerSearchPath("Recording/Monitors"),
                .define("GCC_ENABLE_CPP_EXCEPTIONS", to: "YES"),
                .headerSearchPath("Recording"),
                .headerSearchPath("swift"),
                .headerSearchPath("swift/Basic"),
                .headerSearchPath("llvm/ADT"),
                .headerSearchPath("llvm/Support"),
                .headerSearchPath("llvm/Config")
            ]
        )
    ],
    cxxLanguageStandard: .gnucxx11
)
