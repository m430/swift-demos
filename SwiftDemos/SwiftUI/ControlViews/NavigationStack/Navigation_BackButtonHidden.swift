//
//  Navigation_BackButtonHidden.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/14.
//

import SwiftUI

struct Navigation_BackButtonHidden: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go To Detail", destination: BackButtonHiddenDetail())
                .font(.title)
                .navigationTitle("Navigation Views")
        }
    }
}

struct BackButtonHiddenDetail: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button("Go Back") {
            dismiss()
        }
        .font(.title)
        .navigationTitle("Detail View")
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Navigation_BackButtonHidden()
}
