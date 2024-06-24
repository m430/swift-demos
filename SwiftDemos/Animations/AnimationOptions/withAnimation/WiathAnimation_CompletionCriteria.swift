//
//  WiathAnimation_CompletionCriteria.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/24.
//

import SwiftUI

struct WiathAnimation_CompletionCriteria: View {
    @State private var change1 = false
    @State private var color1 = Color.green
    @State private var change2 = false
    @State private var color2 = Color.green
    
    var body: some View {
        VStack(spacing: 20) {
            Circle()
                .fill(color1)
                .frame(height: 100)
                .frame(maxWidth: .infinity, alignment: change1 ? .trailing : .leading)
            
            Circle()
                .fill(color2)
                .frame(height: 100)
                .frame(maxWidth: .infinity, alignment: change2 ? .trailing : .leading)
            
            Button("Change") {
                // iOS17才可以使用这个特性，其中logicallyComplete是默认行为，代表动画大部分已经完成
                withAnimation(.spring(bounce: 0.6), completionCriteria: .logicallyComplete) {
                    change1.toggle()
                } completion: {
                    color1 = .red
                }
                
                // 如果使用removed则表示等待动画完全完成之后才运行completion
                withAnimation(.spring(bounce: 0.6), completionCriteria: .removed) {
                    change2.toggle()
                } completion: {
                    color2 = .red
                }
            }
            .font(.title)
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    WiathAnimation_CompletionCriteria()
}
