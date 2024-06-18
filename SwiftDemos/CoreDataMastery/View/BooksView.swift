//
//  BaseView.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/5.
//

import SwiftUI

struct BooksView: View {
    @State private var oo = BooksOO()
    var body: some View {
        List(oo.data) { item in
            Text(item.name)
        }
        .font(.title)
        .onAppear {
            oo.fetch()
        }
    }
}

#Preview {
    BooksView()
}
