//
//  ZStack_Layer.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/19.
//

import SwiftUI

struct ZStack_Layer: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HeaderView("ZStack", subtitle: "Layer & Align", desc: "ZStack are great for layering views. For Example, putting text on top of an image.")
                
                ZStack {
                    Image("yosemite_large")
                        .resizable()
                        .scaledToFit()
                    
                    Rectangle()
                        .fill(.white.opacity(0.6))
                        .frame(maxWidth: .infinity, maxHeight: 50)
                    
                    Text("Yosemite National Park")
                        .font(.title)
                        .padding()
                }
                
                ZStack(alignment: .topLeading) {
                    Image("yosemite_large")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Rectangle()
                        .fill(.white.opacity(0.6))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                    
                    Text("Yosemite National Park")
                        .font(.title)
                        .padding()
                }
                
                ZStack(alignment: .bottomTrailing) {
                    Image("yosemite_large")
                        .resizable()
                        .scaledToFit()
                    
                    Rectangle()
                        .fill(.white.opacity(0.6))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                    
                    Text("Yosemite National Park")
                        .font(.title)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ZStack_Layer()
}
