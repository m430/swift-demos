//
//  DragGesture_LimitToXOrY.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/22.
//

import SwiftUI

struct DragGesture_LimitToXOrY: View {
    @State private var currentSliderPositionX: CGFloat = 0.0
    @GestureState private var slideOffset = CGSize.zero
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("DragGesture", subtitle: "Limit to X Axis", desc: "You might want to limit the drag of your view so the user can only drag horizontally or vertically")

            Text("slideOffset: (\(Int(slideOffset.width)), \(Int(slideOffset.height)))")
            Text("currentSliderPositionX: (\(Int(currentSliderPositionX)))")

            GeometryReader { gr in
                HStack {
                    Spacer()
                    Image(systemName: "line.horizontal.3")
                        .rotationEffect(.degrees(90))
                }
                .foregroundStyle(.white)
                .frame(height: 100)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(.blue))
                .offset(x: self.currentSliderPositionX + self.slideOffset.width)
                .gesture(DragGesture()
                    .updating(self.$slideOffset, body: { value, slideOffset, _ in
                        slideOffset = value.translation
                    })
                    .onEnded { value in
                        if value.translation.width < -gr.size.width * 0.6 {
                            self.currentSliderPositionX = 50 - gr.size.width
                        } else {
                            self.currentSliderPositionX = 0
                        }
                    }
                )
                .animation(.default)
            }
        }
    }
}

#Preview {
    DragGesture_LimitToXOrY()
}
