//
//  AnimateSFSymbols.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/12.
//

import SwiftUI

struct AnimateSFSymbols: View {
    @State private var petCount = 0
    
    var body: some View {
        Button  {
            petCount += 1
        } label: {
            Label("Pet the Dog", systemImage: "dog")
        }
        .symbolEffect(.bounce.down, value: petCount)
        .font(.largeTitle)
    }
}

#Preview("AnimateSFSymbols_iOS17") {
    AnimateSFSymbols()
}

struct AnimateSFSymbols_iOS16: View {
    @State private var shouldAnimate = false
    
    var body: some View {
        Label("Pet the Dog", systemImage: "dog")
            .scaleEffect(shouldAnimate ? 1.1 : 1.0)
            .animation(.bouncy(duration: 0.2), value: shouldAnimate)
            .font(.largeTitle)
            .onTapGesture {
                animateIcon()
            }
    }
    
    private func animateIcon() {
        withAnimation {
            shouldAnimate = true
        } completion: {
            shouldAnimate = false
        }
    }
}

#Preview("AnimateSFSymbols_iOS16") {
    AnimateSFSymbols_iOS16()
}
