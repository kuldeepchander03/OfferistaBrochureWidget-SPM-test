
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
                     url: "https://github.com/kuldeepchander03/OfferistaBrochureWidget-SPM-test/releases/download/4.0.0-spm-beta.1/OfferistaBrochureWidget.xcframework.zip",
                     checksum: "cb9c94364785ca4cd4ff08204dfa1a962e6cbcb281643b8e807910bbd5fbf5b8"),
       .binaryTarget(name: "SDWebImage",
                     url: "https://github.com/kuldeepchander03/OfferistaBrochureWidget-SPM-test/releases/download/4.0.0-spm-beta.1/SDWebImage.xcframework.zip",
                     checksum: "584e967f395393dd65b761474cd9468122b5780c98c5b3611a5e270dc123e6ca")
    ]
)

