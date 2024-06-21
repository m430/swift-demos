//
//  ZStack_Intro.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/15.
//

import SwiftUI

struct ZStack_Intro: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Introduction")
                    .foregroundStyle(.white)
                
                Text("ZStack are great setting a background color.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
                Text("But notice the color stops at the safe areas edges (white areas on top and bottom)")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.green)
            }
            .font(.title)
        }
    }
}

#Preview {
    ZStack_Intro()
}

struct ZStack_IgnoreSafeArea: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Introduction")
                    .foregroundStyle(.white)
                
                Text("ZStack are great setting a background color.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
            }
            .font(.title)
        }
        .ignoresSafeArea()
    }
}

#Preview("ZStack_IgnoreSafeArea") {
    ZStack_IgnoreSafeArea()
}

struct ZStack_BackgroundProblem: View {
    var body: some View {
        ZStack {
            Color.gray
                // 但是直接在设置背景颜色的Color上设置忽略边界就不会有这个问题
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Introduction")
                    .foregroundStyle(.white)
                
                Text("ZStack are great setting a background color.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
                Spacer()
            }
            .font(.title)
        }
        // 如果这里忽略安全边界的话会导致ZStack里面的内容被手机安全边界挡住
//        .ignoresSafeArea()
    }
}

#Preview("ZStack_BackgroundProblem") {
    ZStack_BackgroundProblem()
}
