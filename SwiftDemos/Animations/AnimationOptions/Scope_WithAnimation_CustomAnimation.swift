//
//  Scope_WithAnimation_CustomAnimation.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/21.
//

import SwiftUI

struct Scope_WithAnimation_CustomAnimation: View {
    @State private var flipHorizontally = false
    
    var body: some View {
        VStack(spacing: 0) {
            HeaderView("WithAnimation", subtitle: "Intro", desc: "The withAnimation closure says, Anything that changes as a result of any values changing inside this closure will use this animation")
            
            Button(action: {
                withAnimation(Animation.easeInOut(duration: 1)) {
                    flipHorizontally.toggle()
                }
            }) {
                Image(systemName: "flip.horizontal.fill")
                    .font(.system(size: 50))
                    .padding()
            }
            
            Image("day")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(30)
                .padding()
                .scaleEffect(x: flipHorizontally ? -1 : 1, y: 1)
        }
        .font(.title)
    }
}

#Preview {
    Scope_WithAnimation_CustomAnimation()
}
