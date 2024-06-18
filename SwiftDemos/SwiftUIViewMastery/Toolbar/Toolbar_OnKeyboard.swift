//
//  Toolbar_OnKeyboard.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Toolbar_OnKeyboard: View {
    @State private var text = ""
    
    var body: some View {
        VStack(spacing: 20.0) {
            TextField("add name", text: $text)
                .textFieldStyle(.roundedBorder)
                .padding()
        }
        .font(.title)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button(action: {}) {
                    Image(systemName: "questionmark.square")
                }
                .tint(.green)
            }
        }
    }
}

#Preview {
    Toolbar_OnKeyboard()
}
