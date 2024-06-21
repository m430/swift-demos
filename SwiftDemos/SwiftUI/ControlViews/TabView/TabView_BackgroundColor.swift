//
//  TabView_BackgroundColor.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/18.
//

import SwiftUI

struct TabView_BackgroundColor: View {
    var body: some View {
        TabView {
            ZStack {
                // 加背景色也会对TabView起作用
                Color.teal.opacity(0.2)
                    .ignoresSafeArea()
                
                Text("Background Color")
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            Text("No Background Color")
                .tabItem {
                    Label("Message", systemImage: "envelope")
                }
        }
        .font(.title)
    }
}

#Preview {
    TabView_BackgroundColor()
}

struct TabView_Background: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView("TabView", subtitle: "Background", desc: "The new background modifier allows you to have backgrounds that ignore safe area edges, such as the TabView safe area edge.")
                
                Spacer()
                
                Divider()
                    // 这个用法比较神奇：由于Divider被Spacer挤压到TabView的边缘，触碰到TabView之后设置的背景会进入到TabView中。
                    // 但是这个也是只影响当前TabView，不会对整个TabView起作用
                    .background(.ultraThinMaterial)
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            VStack {
                Text("Messages")
                Spacer()
                
                // 像这个就会把当前TabView的背景色修改为棕色半透明
                Divider()
                    .background(.brown.opacity(0.5))
            }
            .tabItem {
                Label("Message", systemImage: "envelope")
            }
        }
    }
}

#Preview("TabView_Background") {
    TabView_Background()
}
