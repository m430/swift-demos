//
//  Coordinates_WithinGeometryReader.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/18.
//

import SwiftUI

struct Coordinates_WithinGeometryReader: View {
    var body: some View {
        HeaderView("Position", subtitle: "Within GeometryReader", desc: "Relative positioning within a geometry reader will work best for all devices sizes")
        
        GeometryReader { geometry in
            ZStack {
                Image(systemName: "1.circle.fill")
                    .foregroundStyle(.red)
                    .position(x: 20, y: 20)
                
                Image(systemName: "2.circle.fill")
                    .foregroundStyle(.yellow)
                    .position(x: geometry.size.width - 20, y: 20)
                
                Image(systemName: "plus.circle")
                    .foregroundStyle(.purple)
                    .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
                
                Image(systemName: "3.circle.fill")
                    .foregroundStyle(.green)
                    .position(x: 20, y: geometry.size.height - 20)
                
                Image(systemName: "4.circle.fill")
                    .foregroundStyle(.orange)
                    .position(x: geometry.size.width - 20, y: geometry.size.height - 20)
            }
        }
        .border(.purple, width: 5)
    }
}

#Preview {
    Coordinates_WithinGeometryReader()
}
