//
//  Toolbar_Menu.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Toolbar_Menu: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
            }
            .navigationTitle("Toolbar Menu")
            .font(.title)
            .toolbar {
                ToolbarItem {
                    Menu {
                        Button(action: {}) {
                            Text("Add color")
                            Image(systemName: "eyedropper.full")
                        }
                        Button(action: {}) {
                            Image(systemName: "circle.lefthalf.fill")
                            Text("Change contrast")
                        }
                    } label: {
                        Image(systemName: "line.3.horizontal.circle")
                    }
                }
            }
            .tint(.green)
        }
    }
}

#Preview {
    Toolbar_Menu()
}
