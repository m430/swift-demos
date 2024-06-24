//
//  WithAnimation_Enable.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/24.
//

import SwiftUI

struct WithAnimation_Enable: View {
    @State private var name = ""
    @State private var password = ""
    @State private var show = false
    @State private var disabled = true
    
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "shield.fill")
                .imageScale(.large)
            
            GroupBox {
                TextField("name", text: $name)
                SecureField("password", text: $password)
            }
            .textFieldStyle(.roundedBorder)
            .offset(x: show ? 0 : 200)
            .opacity(show ? 1 : 0)
            
            Button("Login") {
                
            }
            .buttonStyle(.borderedProminent)
        }
        .disabled(disabled)
        .onAppear {
            withAnimation(.easeOut) {
                show.toggle()
            } completion: {
                withAnimation {
                    disabled.toggle()
                }
            }
        }
    }
}

#Preview {
    WithAnimation_Enable()
}
