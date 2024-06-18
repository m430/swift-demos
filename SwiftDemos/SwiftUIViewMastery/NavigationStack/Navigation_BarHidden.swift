//
//  Navigation_BarHidden.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Navigation_BarHidden: View {
    @State private var isHidden = false
    var body: some View {
        NavigationStack {
            Toggle("Hide Nav Bar", isOn: $isHidden)
                .font(.title)
                .padding()
                .toolbar(isHidden ? .hidden : .visible)
                .navigationTitle("Hide Me")
        }
    }
}

#Preview {
    Navigation_BarHidden()
}
