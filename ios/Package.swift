// Package.swift
import PackageDescription

let package = Package(
    name: "flutter_naver_map",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "flutter_naver_map",
            targets: ["flutter_naver_map"]
        ),
    ],
    dependencies: [
        // Naver Map 의존성 추가
        .package(url: "https://github.com/xncbf/SPM-NMapsMap.git", from: "3.20.0"),
        .package(url: "https://github.com/xncbf/SPM-NMapsGeometry.git", from: "1.0.2")
    ],
    targets: [
        .target(
            name: "flutter_naver_map",
            dependencies: [
                "NMapsMap",
                "NMapsGeometry"
            ]
        )
    ]
)
