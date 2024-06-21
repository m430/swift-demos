//
//  ScaleToFit_Intro.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/18.
//

import SwiftUI

struct ScaleToFit_Intro: View {
    var body: some View {
        HeaderView("Scale To Fit", subtitle: "Intro", desc: "Use the scaleToFit modifier to change the size of content to fit the dimensions of the view's frame while maintaining its aspect ratio")
        
        Text("Not scaled to fill the view's frame")
        HStack {
            Circle()
                .fill(.blue)
                .frame(width: 150, height: 80)
                .border(.red)
            Image("yosemite")
                .resizable()
                .frame(width: 150, height: 80)
                .border(.red)
            Text("Photo of Yosemite")
                .frame(width: 50, height: 50)
                .border(.red)
        }
        
        Text("Scaled to fill the view's frame").font(.system(size: 22))
        VStack {
            Circle()
                .fill(Color("AccentColorLight"))
                .scaledToFit()
                .frame(width: 150, height: 80)
                .border(.red)
            
            Image("yosemite")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 80)
                .border(.red)
            
            Text("Photo of Yosemite")
                .scaledToFit()
                .frame(width: 50, height: 50)
                .border(.red)
        }
    }
}

#Preview {
    ScaleToFit_Intro()
}
