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
//             path: "Sources",
            exclude: ["Info.plist",
                      "MQTT/MQTTClient-Prefix.pch"],
            resources: [
                .copy("push/TSMessagesDefaultDesign.json")
            ],
            cSettings: [
//                 .headerSearchPath(""),
                .headerSearchPath("Sources/KommunicateCore-iOS-SDK/Classes/include"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/account"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/applozickit"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/channel"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/commons"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/conversation"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/database"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/JWT"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/message"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/MQTT"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/networkcommunication"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/notification"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/prefrence"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/push"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/sync"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/user"),
//                 .headerSearchPath("KommunicateCore-iOS-SDK/Classes/utilities")
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
