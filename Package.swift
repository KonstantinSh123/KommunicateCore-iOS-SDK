// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "KommunicateCore-iOS-SDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "KommunicateCore-iOS-SDK",
            targets: ["KommunicateCore-iOS-SDK"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "KommunicateCore-iOS-SDK",
            dependencies: [],
            path: "Sources/KommunicateCore-iOS-SDK",
            exclude: ["Classes/Info.plist",
                      "Classes/MQTT/MQTTClient-Prefix.pch"],
            resources: [
                .copy("Classes/push/TSMessagesDefaultDesign.json")
            ],
            cSettings: [
                .headerSearchPath("Classes"),
                .headerSearchPath("Classes/include"),
                .headerSearchPath("Classes/account"),
                .headerSearchPath("Classes/applozickit"),
                .headerSearchPath("Classes/channel"),
                .headerSearchPath("Classes/commons"),
                .headerSearchPath("Classes/conversation"),
                .headerSearchPath("Classes/database"),
                .headerSearchPath("Classes/JWT"),
                .headerSearchPath("Classes/message"),
                .headerSearchPath("Classes/MQTT"),
                .headerSearchPath("Classes/networkcommunication"),
                .headerSearchPath("Classes/notification"),
                .headerSearchPath("Classes/prefrence"),
                .headerSearchPath("Classes/push"),
                .headerSearchPath("Classes/sync"),
                .headerSearchPath("Classes/user"),
                .headerSearchPath("Classes/utilities")
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit", .when(platforms: [.iOS]))
            ]
        )
    ],
    swiftLanguageVersions: [.v5]
)
