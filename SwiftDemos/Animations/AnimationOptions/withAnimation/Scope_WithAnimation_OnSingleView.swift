//
//  Scope_WithAnimation_OnSingleView.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/21.
//

import SwiftUI

struct Scope_WithAnimation_OnSingleView: View {
    @State private var flipVertically = false
    @State private var flipHorizontally = false

    var body: some View {
        VStack(spacing: 0) {
            HeaderView("WithAnimation", subtitle: "Intro", desc: "The withAnimation closure says, Anything that changes as a result of any values changing inside this closure will use this animation")

            HStack {
                Button(action: {
                    withAnimation {
                        flipHorizontally.toggle()
                    }
                }) {
                    Image(systemName: "flip.horizontal.fill")
                        .font(.system(size: 50))
                        .padding()
                }

                Button(action: {
                    withAnimation {
                        flipVertically.toggle()
                    }
                }) {
                    Image(systemName: "flip.horizontal.fill")
                        .font(.system(size: 50))
                        .padding()
                        .rotationEffect(.degrees(90))
                }
            }

            Image("day")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(30)
                .padding()
                .scaleEffect(
                    x: flipHorizontally ? -1 : 1,
                    y: flipVertically ? -1 : 1
                )
        }
        .font(.title)
    }
}

#Preview {
    Scope_WithAnimation_OnSingleView()
}
