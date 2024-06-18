//
//  LazyVStack.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/5.
//

import SwiftUI

struct LazyVStack_Intro: View {
    var body: some View {
        VStack(spacing: 10.0) {
            HeaderView("LazyVStack",
                       subtitle: "Introduction",
                       desc: "When using the LazyVStack by itself, you won't notice much of a difference from the VStack.", back: .yellow, textColor: .black)
                .layoutPriority(1)
            
            Text("LazyVStack")
            LazyVStack(spacing: 10.0) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
            
            Text("VStack")
            VStack(spacing: 10) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(.red, width: 2)
            
            Text("Notice the LazyVStack pushes out horizontally. (No Spacer being used here.)")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.yellow)
        }
        .font(.title)
    }
}



#Preview {
    LazyVStack_Intro()
}
