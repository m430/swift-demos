//
//  Coordinates_Intro.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/18.
//

import SwiftUI

struct Coordinates_Intro: View {
    var body: some View {
        HeaderView("X & Y coordinates start in the upper left corner", desc: "Intro")
        
        ZStack {
            Text("50, 20")
                .position(x: 50, y: 20)
            
            Text("350, 20")
                .position(x: 350, y: 20)
            
            Text("60, 230")
                .position(x: 60, y: 230)
            
            Text("350, 230")
                .position(x: 350, y: 230)
        }
        .border(.purple, width: 5)
    }
}

#Preview {
    Coordinates_Intro()
}
