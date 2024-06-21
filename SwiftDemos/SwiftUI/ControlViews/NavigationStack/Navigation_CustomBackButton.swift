//
//  Navigation_CustomBackButton.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Navigation_CustomBackButton: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go To Detail", destination: Navigation_CustomBackButton_Detail())
                .font(.title)
                .navigationTitle("Navigation Views")
        }
    }
}

struct Navigation_CustomBackButton_Detail: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
        }
        .navigationTitle("Detail View")
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    // 这里只能显示图标，不能显示文字，如果要显示文字就只能把整个toolbar隐藏掉
                    // 然后自己在VStack中自定义NavigationBar
                    Label("Back", systemImage: "arrow.left.circle")
                }
            }
        }
    }
}

#Preview {
    Navigation_CustomBackButton()
}
