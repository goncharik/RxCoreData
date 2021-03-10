// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "RxCoreData",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_12)
    ],
    products: [
        .library(name: "RxCoreData", targets: ["RxCoreData"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", "6.0.0" ..< "7.0.0"),
    ],
    targets: [
        .target(
            name: "RxCoreData",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift"),
            ],
            path: "Sources"),
    ]
)