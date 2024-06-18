//
//  HStack_Alignment.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/15.
//

import SwiftUI

struct HStack_Alignment: View {
    var body: some View {
        HStack {
            Rectangle().foregroundStyle(.orange)
            Text("Leading")
            Text("Top")
            Text("Trailing")
        }
    }
}

#Preview {
    HStack_Alignment()
}
