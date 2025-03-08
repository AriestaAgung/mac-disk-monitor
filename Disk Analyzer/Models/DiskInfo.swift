//
//  DiskInfo.swift
//  Disk Analyzer
//
//  Created by Ariesta Agung on 09/03/25.
//

import Foundation

struct DiskInfo {
    let fileSystemName: String
    let size: Int64
    let used: Int64
    let available: Int64
    let capacity: Int
    let mountPoint: String
    var isSystemVolume: Bool {
        mountPoint == "/"
    }
    var isDataVolume: Bool {
        mountPoint == "/System/Volumes/Data"
    }
}

extension Array where Element == DiskInfo {
    var systemVolume: DiskInfo? {
        first(where: \.isSystemVolume)
    }
    var dataVolume: DiskInfo? {
        first(where: \.isDataVolume)
    }
}
