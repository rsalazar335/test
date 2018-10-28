// swift-tools-version:4.2

import PackageDescription
import Foundation

// import version for FAST library
var major : Int = 1
if let string_major = ProcessInfo.processInfo.environment["FAST_VER_MAJOR"] { 
	if let number_major = Int(string_major) { major = number_major }
}
var minor : Int = 0
if let string_minor = ProcessInfo.processInfo.environment["FAST_VER_MINOR"] { 
	if let number_minor = Int(string_minor) { minor = number_minor }
}
var patch : Int = 0
if let string_patch = ProcessInfo.processInfo.environment["FAST_VER_PATCH"] { 
	if let number_patch = Int(string_patch) { patch = number_patch }
}
let FAST_VER : Version = Version(_: major, _: minor, _: patch, prereleaseIdentifiers: [""], buildMetadataIdentifiers: [""])

let package = Package(
    name: "cp1",
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .exact(FAST_VER)),
    ],
    targets: [
        .target(
            name: "cp1",
            dependencies: ["SwiftyJSON"]),
        .testTarget(
            name: "cp1Tests",
            dependencies: ["cp1"]),
    ]
)
