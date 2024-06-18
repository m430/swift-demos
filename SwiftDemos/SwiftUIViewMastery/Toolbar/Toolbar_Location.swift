//
//  Toolbar_Location.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Toolbar_Location: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {}
                .navigationTitle("Toolbar")
                .font(.title)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {}) {
                            Image(systemName: "line.horizontal.3")
                                .padding(.horizontal)
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {}) {
                            Image(systemName: "line.horizontal.3.decrease.circle")
                                .padding(.horizontal)
                        }
                    }
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: {}) {
                            Image(systemName: "aspectratio")
                            Text("Aspect Ratio")
                        }
                    }
                }
                .tint(.green)
        }
    }
}

#Preview {
    Toolbar_Location()
}
