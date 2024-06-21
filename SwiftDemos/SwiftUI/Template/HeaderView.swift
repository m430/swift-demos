//
//  HeaderView.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/5.
//

import SwiftUI

struct HeaderView: View {
    var title: String = "Title"
    var subtitle: String = "Subtitle"
    var desc: String = "Use this to..."
    var back: Color = .blue
    var textColor: Color = .white
    
    init(_ title: String, subtitle: String = "", desc: String = "", back: Color = .blue, textColor: Color = .white) {
        self.title = title
        self.subtitle = subtitle
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
        
        Text(subtitle)
            .font(.title)
            .foregroundStyle(.gray)
        
        Text(desc)
            .frame(maxWidth: .infinity)
            .font(.title)
            .foregroundColor(textColor)
            .padding()
            .background(back)
    }
}

#Preview {
    HeaderView("Title")
}
