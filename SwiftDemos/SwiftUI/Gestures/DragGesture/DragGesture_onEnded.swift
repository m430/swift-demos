//
//  DragGesture_onEnded.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/22.
//

import SwiftUI

struct DragGesture_onEnded: View {
    @State private var circlePosition = CGPoint(x: 50, y: 50)
    @State private var circleLabel = "50,50"
    @State private var isOk = true
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Gesture", subtitle: "Drag Gesture - onEnded", desc: "")
            
            Text("Dray the Circle")
            Circle()
                .fill(.blue)
                .frame(width: 100, height: 100)
                .opacity(0.8)
                .overlay {
                    Text(circleLabel)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white)
                }
                .position(circlePosition)
                .gesture(DragGesture()
                    .onChanged { value in
                        self.circlePosition = value.location
                        self.circleLabel = "\(Int(value.location.x)), \(Int(value.location.y))"
                    }
                    .onEnded({ value in
                        self.isOk = value.location.x < 200 ? true : false
                    })
                )
                .background(isOk ? .clear : .pink)
        }
        .font(.title)
    }
}

#Preview {
    DragGesture_onEnded()
}
