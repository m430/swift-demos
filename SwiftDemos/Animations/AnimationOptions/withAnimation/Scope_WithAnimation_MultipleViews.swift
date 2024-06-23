//
//  Scope_WithAnimation_MultipleViews.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/21.
//

import SwiftUI

struct Scope_WithAnimation_MultipleViews: View {
    @State private var unlock = false
    @State private  var open = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("WithAnimation", subtitle: "Multiple Views", desc: "Any value changed within the withAnimation closure will animate the view that use that value in its modifiers, This value can exist anywhere in the view hierarchy and affect many views.")
            
            Button(action: {
                withAnimation {
                    unlock.toggle()
                }
            }) {
                Image(systemName: unlock ? "lock.open" : "lock")
                    .offset(x: unlock ? 4.5 : 0)
                    .animation(.none, value: unlock)
            }
            
            GeometryReader { geometry in
                ZStack {
                    VStack {
                        Text("Hello")
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.pink)
                    }
                    .font(.system(size: 50))
                    
                    HStack(spacing: 0) {
                        Rectangle()
                            .fill(unlock ? .green : .red)
                            .offset(x: open ? -geometry.size.width : 0)
                        Rectangle()
                            .fill(unlock ? .green : .red)
                            .offset(x: open ? geometry.size.width : 0)
                    }
                    
                    if unlock && open == false {
                        Button("O P E N") {
                            withAnimation {
                                open = true
                            }
                        }
                    }
                }
            }
        }
        .font(.title)
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    Scope_WithAnimation_MultipleViews()
}
