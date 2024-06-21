//
//  TabView_UITabBarAppearance.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/18.
//

import SwiftUI

struct TabView_UITabBarAppearance: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView("TabView", subtitle: "Background", desc: "The new background modifier allows you to have backgrounds that ignore safe area edges, such as the TabView safe area edge.")
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            VStack {
                Text("Messages")
            }
            .tabItem {
                Label("Message", systemImage: "envelope")
            }
        }
        .font(.title)
        .onAppear {
            // 使用UITabBarAppearance可以全局修改整个TabView的背景色，这个算是在SwiftUI中的主流做法了
            let appearance = UITabBarAppearance()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.backgroundColor = UIColor(Color.green.opacity(0.2))
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
        }
    }
}

#Preview {
    TabView_UITabBarAppearance()
}
