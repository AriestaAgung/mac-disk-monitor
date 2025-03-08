//
//  ContentView.swift
//  Disk Analyzer
//
//  Created by Ariesta Agung on 08/03/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var fetcher = DiskInfoFetcher()
    var body: some View {
        VStack(spacing: 20) {
            Text("Disk Info Analyzer")
                .font(.system(size: 24, weight: .semibold))
            DiskInfoList(diskInfos: fetcher.diskInfo)
            DiskInfoChart(diskInfos: fetcher.diskInfo)
        }
        .padding()
        .task {
            do {
                fetcher.diskInfo = try await fetcher.getInfo()
            } catch {
                fetcher.error = error
            }
        }
    }
}

#Preview {
    ContentView()
        .frame(width: 300, height: 400)
}
