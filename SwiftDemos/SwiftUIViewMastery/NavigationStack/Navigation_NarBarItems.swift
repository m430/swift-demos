//
//  Navigation_NarBarItems.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Navigation_NarBarItems: View {
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Navigation Bar Buttons")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "bell.fill")
                            .padding(.horizontal)
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Action") {
                    }
                }
            }
            .tint(.pink)
        }
    }
}

#Preview {
    Navigation_NarBarItems()
}
