
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "OfferistaBrochureWidget",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "OfferistaBrochureWidget",
            targets: ["OfferistaBrochureWidget", "OfferistaBrochureWidgetTarget", "SDWebImage"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/mxcl/PromiseKit", .upToNextMajor(from: "6.8.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
       .target(
           name: "OfferistaBrochureWidgetTarget",
           dependencies: [
            .target(name: "OfferistaBrochureWidget"),
            "PromiseKit",
            "SDWebImage"
           ],
           path: "OfferistaBrochureWidgetTarget"
       ),
       .binaryTarget(name: "OfferistaBrochureWidget",
                     url: "https://github.com/kuldeepchander03/OfferistaBrochureWidget-SPM-test/releases/download/4.0.0/OfferistaBrochureWidget.xcframework.zip",
                     checksum: "0f0b298684ab1d201f9c3b3329e1a86238efaf057a76af8fafbe870a006531a8"),
       .binaryTarget(name: "SDWebImage",
                     url: "https://github.com/kuldeepchander03/OfferistaBrochureWidget-SPM-test/releases/download/4.0.0/SDWebImage.xcframework.zip",
                     checksum: "ff12b02a5f7c4a1b6a217426fec4f321eba378241be125f94652e6355ba9d042")
    ]
)

