//
//  DragGesture_Updating.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/22.
//

import SwiftUI

struct DragGesture_Updating: View {
    @State private var circlePosition = CGPoint(x: 50, y: 50)
    @State private var circleLabel = "50,50"
    @GestureState private var isDragging = false
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Gesture", subtitle: "Drag Gesture - Updating", desc: "you could also use the updating callback to perform the same actions")
            
            Text("Dray the Circle")
            Text("isDragging: \(isDragging.description)")
            Circle()
                .fill(isDragging ? .orange :.blue)
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
                    .updating($isDragging) { (value, state, transaction) in
                        // 你不能直接修改isDragging，而是通过修改state，然后state会更新isDragging
                        state = true
                    }
                )
                
            Text("Updating uses GestureState as a parameter. GestureState resets whatever value it is given when the gesture has ended.")
                .frame(maxWidth: .infinity)
                .background(.blue)
                .foregroundStyle(.white)
        }
        .font(.title)
    }
}

#Preview {
    DragGesture_Updating()
}
