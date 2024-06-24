//
//  Scope_WithAnimation_Sequencing_SameView.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/24.
//

import SwiftUI

struct Scope_WithAnimation_Sequencing_SameView: View {
    @State private var expandMoreInfo = false
    @State private var showInfo = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("WithAnimation", subtitle: "Sequencing with Parent/Child", desc: "This solution works correctly when using withAnimation to animate the parent and the child views. Notice you need a second state variable for the second animation")
            
            GeometryReader { geometry in
                VStack(spacing: 15) {
                    HStack {
                        Image(systemName: "info.circle").padding(.horizontal)
                        Text("Login Help")
                        Spacer()
                    }
                    .padding(.top)
                    
                    VStack(spacing: 10) {
                        Image(systemName: "slider.horizontal.3").font(.largeTitle)
                        Text("Appear after parent is done animating out.")
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 15).opacity(0.1))
                    .padding(.horizontal)
                    .opacity(showInfo ? 1 : 0)
                }
                .padding(.trailing, 12)
                .background(RoundedRectangle(cornerRadius: 20).fill(.yellow).shadow(radius: 8))
                .foregroundStyle(.black)
                .offset(
                    x: expandMoreInfo ? 15 : (geometry.frame(in: .global).width - 65),
                    y: expandMoreInfo ? 15 : (geometry.frame(in: .global).height - 65)
                )
                .onTapGesture {
                    withAnimation {
                        expandMoreInfo.toggle()
                    }
                    withAnimation(.default.delay(0.5)) {
                        showInfo.toggle()
                    }
                }
            }
        }
        .ignoresSafeArea(edges: .bottom)
        .font(.title)
    }
}

#Preview {
    Scope_WithAnimation_Sequencing_SameView()
}
