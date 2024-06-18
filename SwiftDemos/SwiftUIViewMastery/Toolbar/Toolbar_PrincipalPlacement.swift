//
//  Toolbar_PrincipalPlacement.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Toolbar_PrincipalPlacement: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Divider()
                Spacer()
            }
                .font(.title)
                .navigationTitle("Nav Bar title")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack(spacing: 0) {
                            Text("My List").bold()
                            Button(action: {}, label: {
                                Text("Scroll to Top")
                                Image(systemName: "chevron.up")
                            })
                        }
                    }
                }
                .tint(.green)
        }
    }
}

#Preview {
    Toolbar_PrincipalPlacement()
}
