//
//  Disk_AnalyzerApp.swift
//  Disk Analyzer
//
//  Created by Ariesta Agung on 08/03/25.
//

import SwiftUI

@main
struct Disk_AnalyzerApp: App {
    var body: some Scene {
        MenuBarExtra {
            ContentView()
        } label: {
            Label("Disk Analyzer", systemImage: "externaldrive.connected.to.line.below.fill")
        }
        .menuBarExtraStyle(.window)
    }
}
