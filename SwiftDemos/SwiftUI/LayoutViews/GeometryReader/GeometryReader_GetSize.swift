//
//  GeometryReader_GetSize.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/19.
//

import SwiftUI

struct GeometryReader_GetSize: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("GeometryReader", subtitle: "Getting Size", desc: "Use the GeometryReader when you need to get the height and/or width of a space")
            
            GeometryReader { geometry in
                VStack(spacing: 10) {
                    Text("Width: \(geometry.size.width)")
                    Text("Height: \(geometry.size.height)")
                }
                .padding()
                .foregroundStyle(.white)
            }
            .background(.pink)
        }
        .font(.title)
    }
}

#Preview {
    GeometryReader_GetSize()
}
