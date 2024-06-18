//
//  Position_Intro.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/17.
//

import SwiftUI

struct Position_Intro: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("Position", subtitle: "Intro", desc: """
            When you use the position modifier, it'll turn your pull-in view into a push-out view.
            """)
            
            Text("No Position Modifier")
                .border(.purple)
            
            // 加了position之后View就会变成一个push out view
            Text("With Position Modifier")
                .position(x: 200, y: 70)
                .border(.purple, width: 5)
            
            Text("The bounds of the view push out to fill all available space.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.purple)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    Position_Intro()
}
