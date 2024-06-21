//
//  Navigation_DisplayMode.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Navigation_DisplayMode: View {
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                Spacer()
            }
            .navigationTitle("Inline Display Mode")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview("Navigation_DisplayMode") {
    Navigation_DisplayMode()
}
