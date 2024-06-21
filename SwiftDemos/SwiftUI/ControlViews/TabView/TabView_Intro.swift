//
//  TabView_Intro.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/18.
//

import SwiftUI

struct TabView_Intro: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView("TabView", subtitle: "Intro", desc: "The TabView can hold multiple views, one for each tab")
                
                Text("At the end of a view, you add .tabItem modifier to show a button that allows navigation to that view")
                    .padding()
                
                Image("TabItem")
            }
            .tabItem {
                Text("Tab 1")
            }
            
            Text("This view represents the Second Screen")
                .tabItem {
                    Text("Tab 2")
                }
        }
        .font(.title)
    }
}

#Preview {
    TabView_Intro()
}
