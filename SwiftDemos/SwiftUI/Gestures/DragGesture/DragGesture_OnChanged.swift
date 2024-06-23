//
//  DragGesture_OnChanged.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/21.
//

import SwiftUI

struct DragGesture_OnChanged: View {
    @State private var circlePosition = CGPoint(x: 50, y: 50)
    @State private var circleLabel = "50,50"
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Gesture", subtitle: "Drag Gesture - onChanged", desc: "Attach a drag gesture modifier to a view to allow a user to drag it. Use the onChanged callback to get information about the drag")
            
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
                )
                .border(.blue)
        }
        .font(.title)
    }
}

#Preview {
    DragGesture_OnChanged()
}
