//
//  DragGesture_MinDistance.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/23.
//

import SwiftUI

struct DragGesture_MinDistance: View {
    @GestureState private var circleOffset = CGSize.zero
    
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("DragGesture", subtitle: "Min Distance", desc: "You can set a min distance the user has to drag a view before it actually starts moving")
            
            Text("Drag the image out of the circle")
                .padding(.bottom)
            
            ZStack {
                Circle()
                    .stroke(.blue, lineWidth: 1)
                    .frame(width: 100, height: 100)
                
                Image(systemName: "doc.on.doc.fill")
                    .foregroundStyle(.blue)
                    .offset(circleOffset)
                    .gesture(DragGesture()
                        .updating($circleOffset, body: { (value, circleOffset, transaction) in
                            circleOffset = value.translation
                        })
                    )
            }
        }
        .font(.title)
    }
}

#Preview {
    DragGesture_MinDistance()
}
