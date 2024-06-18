//
//  Toolbar_ControlGroup.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Toolbar_ControlGroup: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20.0) {
            }
            .font(.title)
            .navigationTitle("Toolbar ControlGroup")
            .toolbar {
                ToolbarItem {
                    ControlGroup {
                        Button(action: {}) {
                            Image(systemName: "aspectratio")
                        }
                        Button(action: {}) {
                            Image(systemName: "gearshape.fill")
                        }
                    }
                    .controlGroupStyle(.navigation)
                }
            }
        }
    }
}

#Preview {
    Toolbar_ControlGroup()
}
