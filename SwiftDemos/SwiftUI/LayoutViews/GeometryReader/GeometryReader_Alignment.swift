//
//  GeometryReader_Alignment.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/19.
//

import SwiftUI

struct GeometryReader_Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("GeometryReader", subtitle: "Alignment", desc: "Child views within the GeometryReader are aligned in the upper left corner by default")
            
            GeometryReader { _ in
                Image(systemName: "arrow.up.left")
                    .padding()
            }
            .background(.pink)
        }
        .font(.title)
    }
}

#Preview {
    GeometryReader_Alignment()
}
