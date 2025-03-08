//
//  DiskInfoChart.swift
//  Disk Analyzer
//
//  Created by Ariesta Agung on 09/03/25.
//

import SwiftUI
import Charts

struct DiskInfoChart: View {
    var diskInfos: [FormattedDiskInfo]
    var body: some View {
        Chart(diskInfos) { info in
            SectorMark(angle: .value(info.title, info.percentage), innerRadius: .ratio(0.7), angularInset: 1.0)
                .foregroundStyle(by: .value(Text(verbatim: info.title), info.title))
                .annotation(position: .overlay) {
                    if info.title != "System" {
                        Text("\(info.percentage * 100, specifier: "%.1f%%")")
                            .bold()
                    }
                }
                .cornerRadius(5)
        }
        .chartLegend(position: .trailing, alignment: .center)
        .padding()
    }
}

#Preview {
    DiskInfoChart(diskInfos: [.example, .example])
}
