//
//  GeometryReader_Intro.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/17.
//

import SwiftUI

struct GeometryReader_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("GeometryReader", subtitle: "Intro", desc: """
            Geometry is a container view that pushes out to fill
            up all available space. You use it to help with positioning items
            within it.
            """)

            GeometryReader { _ in
            }
            .background(.pink)
        }
        .font(.title)
    }
}

#Preview {
    GeometryReader_Intro()
}
