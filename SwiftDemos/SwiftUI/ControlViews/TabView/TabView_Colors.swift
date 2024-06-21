//
//  TabView_Colors.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/18.
//

import SwiftUI

struct TabView_Colors: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView("TabView", subtitle: "Intro", desc: "The TabView can hold multiple views, one for each tab")
                
                Text("At the end of a view, you add .tabItem modifier to show a button that allows navigation to that view")
                    .padding()
                
                Image("TabItem")
            }
            .tabItem {
                Image(systemName: "star.fill")
            }
            
            Text("Second Screen")
                .tabItem {
                    Image(systemName: "moon.fill")
                }
                // foregroundStyle对tabItem颜色没有影响，bacground也是一样
                .foregroundStyle(.red)
        }
        .font(.title)
        // tint来修改激活tab的颜色
        .tint(.yellow)
    }
}

#Preview {
    TabView_Colors()
}
