//
//  TabView_PageStyle.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/18.
//

import SwiftUI

struct TabView_PageStyle: View {
    var body: some View {
        TabView {
            VStack(spacing: 20) {
                HeaderView("TabView", subtitle: "PageTabViewStyle", desc: "The tab view can have a style applied to it which enables the ability to horizontally swipe through views that snap into place.")
                
                Text("PAGE")
                
                HStack {
                    Image(systemName: "1.circle")
                    Image(systemName: "arrow.right.circle")
                }
            }
            
            VStack(spacing: 20) {
                Text("PAGE")
                
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Image(systemName: "2.circle")
                    Image(systemName: "arrow.right.circle")
                }
            }
            
            VStack(spacing: 20) {
                Text("PAGE")
                
                HStack {
                    Image(systemName: "arrow.left.circle")
                    Image(systemName: "3.circle")
                }
            }
        }
        .font(.title)
        .tabViewStyle(.page)
        // 显示指示器
        // .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview {
    TabView_PageStyle()
}

struct TabView_Customizations: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("TabView", subtitle: "Customizations", desc: "You could include the TabView as another way to do horizontal scrolling through data.")
            
            Text("People")
            
            TabView {
                ForEach(1..<21) { index in
                    VStack(spacing: 20) {
                        Text("Person \(index)")
                        Image("profile\(index)")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.yellow.opacity(0.7))
                    )
                }
            }
            .font(.title)
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
    }
}

#Preview("TabView_Customizations") {
    TabView_Customizations()
}
