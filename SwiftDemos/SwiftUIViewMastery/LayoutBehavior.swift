//
//  LayoutBehavior.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/5.
//

import SwiftUI

struct ViewSizes_Pull_In: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior").font(.largeTitle)
            Text("Views that Pull In").foregroundStyle(.gray)
            Text("Some Views minimize their frame size so it is only as big as the content within it.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(.white)

            Image(systemName: "arrow.down.to.line.alt")

            HStack {
                Image(systemName: "arrow.right.to.line.alt")
                Text("Text Views pull in")
                Image(systemName: "arrow.left.to.line.alt")
            }

            Image(systemName: "arrow.up.to.line.alt")

            Text("Pull-In views tend to center themselves within their parent container view.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(.purple)
                .foregroundColor(.white)
        }
        .font(.title)
    }
}

#Preview {
    ViewSizes_Pull_In()
        .previewDisplayName("ViewSizes_Pull_In")
}

struct ViewSizes_Push_Out: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Behavior")
            Text("Views that Push Out")
                .font(.title).foregroundStyle(.gray)
            Text("Some views will push out to fill up all available space within their parent.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .background(.purple)
                .foregroundColor(.white)

            Color.purple
                .overlay(Image(systemName: "arrow.up.left").padding(), alignment: .topLeading)
                .overlay(Image(systemName: "arrow.up.right").padding(), alignment: .topTrailing)
                .overlay(Image(systemName: "arrow.down.left").padding(), alignment: .bottomLeading)
                .overlay(Image(systemName: "arrow.down.right").padding(), alignment: .bottomTrailing)
                .overlay(Text("Colors are Push-Out views"))
                .foregroundColor(.white)
        }
        .font(.title)
    }
}

#Preview {
    ViewSizes_Push_Out()
        .previewDisplayName("ViewSizes_Push_Out")
}
