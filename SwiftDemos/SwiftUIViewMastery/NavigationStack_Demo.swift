//
//  NavigationStack_Demo.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct NavigationStack_Demo: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.green.opacity(0.25)
                    .ignoresSafeArea()
                
            }
            .navigationTitle("Toolbar Background")
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

#Preview {
    NavigationStack_Demo()
}


struct Navigation_CustomBackground: View {
    var body: some View {
        NavigationStack {
            VStack {
                Divider()
                    .background(
                        LinearGradient(colors: [.green, .blue], startPoint: .leading, endPoint: .trailing)
                            .opacity(0.5)
                            .shadow(.drop(radius: 2, y: 2)),
                        ignoresSafeAreaEdges: .top
                    )
                
                Spacer()
            }
            .navigationTitle("Custom Background")
        }
    }
}

#Preview("Navigation_CustomBackground") {
    Navigation_CustomBackground()
}

struct Navigation_UINavigationBarAppearance: View {
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Appearance")
            .font(.title)
        }
        .onAppear {
            let appearance = UINavigationBarAppearance()
            appearance.backgroundColor = UIColor(.green.opacity(0.25))
            
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview("Navigation_UINavigationBarAppearance") {
    Navigation_UINavigationBarAppearance()
}
