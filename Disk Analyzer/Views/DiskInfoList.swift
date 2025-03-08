//
//  DiskInfoList.swift
//  Disk Analyzer
//
//  Created by Ariesta Agung on 09/03/25.
//

import SwiftUI

struct DiskInfoList: View {
    var diskInfos: [FormattedDiskInfo]
    
    var body: some View {
        GroupBox {
            ForEach(diskInfos) { info in
                DiskInfoRow(info: info)
            }
            .padding() 
        } label: {
            Text("Disk Info Overview")
        }
    }
}

#Preview {
    DiskInfoList(diskInfos: [
        .example,
        .example
    ])
}
