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
            }
            .font(.title)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ZStack_Intro()
}
