//
//  GeometryReader_Positioning.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/19.
//

import SwiftUI

struct GeometryReader_Positioning: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("GeometryReader", subtitle: "Positioning", desc: "Use the GeometryReader input parameter to help position child views at different locations within the geometry's view.")
            
            GeometryReader { geometry in
                Text("Upper Left")
                    .font(.title)
                    .position(
                        x: geometry.size.width / 5,
                        y: geometry.size.height / 10
                    )
                
                Text("Lower Right")
                    .font(.title)
                    .position(
                        x: geometry.size.width - 90,
                        y: geometry.size.height - 40
                    )
            }
            .background(.pink)
            .foregroundStyle(.white)
            
            Text("Note: The position modifier uses the view's center point when setting the x and y.")
                .font(.title)
        }
    }
}

#Preview {
    GeometryReader_Positioning()
}
