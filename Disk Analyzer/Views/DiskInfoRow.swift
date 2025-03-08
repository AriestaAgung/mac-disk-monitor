//
//  DiskInfoRow.swift
//  Disk Analyzer
//
//  Created by Ariesta Agung on 09/03/25.
//

import SwiftUI

struct DiskInfoRow: View {
    let info: FormattedDiskInfo
    var progressBarColor: Color {
        switch info.title {
        case "System":
            return .blue
        case "Available":
            return .green
        default:
            return .orange
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(info.title)
                Spacer()
                Text(info.formattedSize)
                    .font(.system(.body, design: .monospaced))
            }
            
            GeometryReader { geo in
                RoundedRectangle(cornerSize: geo.size)
                    .fill(.gray.opacity(0.3))
                RoundedRectangle(cornerSize: geo.size)
                    .fill(progressBarColor)
                    .frame(width: geo.size.width * info.percentage)
            }
            .frame(height: 6)
            
        }
    }
}

#Preview {
    DiskInfoRow(info: .example)
        .padding()
}
