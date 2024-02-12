
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
                     url: "https://github.com/kuldeepchander03/OfferistaBrochureWidget-SPM-test/releases/download/4.0.0-beta.2/OfferistaBrochureWidget-spm.xcframework.zip",
                     checksum: "edd776ed5116379783e3037f598ae07b19b4bc57b743621d6425f32ccff83fd5"),
       .binaryTarget(name: "SDWebImage",
                     url: "https://github.com/kuldeepchander03/OfferistaBrochureWidget-SPM-test/releases/download/4.0.0-beta.2/SDWebImage.xcframework.zip",
                     checksum: "2a251af28795e088428640155a960ce3c48a3718e9ed9c432750183fc3ad6b15")
    ]
)

