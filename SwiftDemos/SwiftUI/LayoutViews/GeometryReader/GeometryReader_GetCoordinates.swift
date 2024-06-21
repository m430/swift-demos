//
//  GeometryReader_GetCoordinates.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/19.
//

import SwiftUI

struct GeometryReader_GetCoordinates: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("GeometryReader", subtitle: "Get Coordinates", desc: "Getting the coordinates (x,y) of a geometry view is little different. Take a look at this example:")
            
            GeometryReader { geometry in
                //CoordinateSpace.local获取的起点总是0,0
                VStack(spacing: 10) {
                    Text("X: \(geometry.frame(in: CoordinateSpace.local).origin.x)")
                    Text("Y: \(geometry.frame(in: CoordinateSpace.local).origin.y)")
                }
                .foregroundStyle(.white)
            }
            .background(.pink)
            .foregroundStyle(.white)
            
            Text("The local coordinate space will always give you zeros")
            Text("You need to look globally to get the coordinates inside the current view:")
            
            GeometryReader { geometry in
                // CoordinateSpace.global访问的起点则是GeometryReader相对整个屏幕的位置
                // 这里CoordinateSpace可以忽略
                VStack(spacing: 10) {
                    Text("X: \(geometry.frame(in: CoordinateSpace.global).origin.x)")
                    Text("Y: \(geometry.frame(in: CoordinateSpace.global).origin.y)")
                }
                .foregroundStyle(.white)
            }
            .background(.pink)
            .frame(height: 200)
        }
        .font(.title)
        .padding(.horizontal)
    }
}

#Preview {
    GeometryReader_GetCoordinates()
}
