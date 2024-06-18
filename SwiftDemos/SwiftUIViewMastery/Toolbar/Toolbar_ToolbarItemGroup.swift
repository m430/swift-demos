//
//  Toolbar_ToolbarItemGroup.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Toolbar_ToolbarItemGroup: View {
    var body: some View {
        NavigationStack {
            VStack {}
                .font(.title)
                .navigationTitle("Toolbar Item Group")
                .toolbar {
                    ToolbarItemGroup {
                        Button(action: {}) { Image(systemName: "aspectratio") }
                        Button(action: {}) { Image(systemName: "gearshape.fill") }
                    }
                }
                .tint(.green)
        }
    }
}

#Preview {
    Toolbar_ToolbarItemGroup()
}
