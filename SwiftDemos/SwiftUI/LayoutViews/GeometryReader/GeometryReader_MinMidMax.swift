//
//  GeometryReader_MinMidMax.swift
//  SwiftDemos
//
//  Created by 郑敏 on 2024/6/19.
//

import SwiftUI

struct GeometryReader_MinMidMax: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("GeometryReader", subtitle: "Min Mid Max", desc: "You can also get the min, mid, and max X and Y coordinate from the geometry reader's frame.")
            
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 20) {
                    Text("Local Coordinate Space")
                    HStack(spacing: 10) {
                        Text("minX: \(geometry.frame(in: .local).minX)")
                        Spacer()
                        Text("midX: \(geometry.frame(in: .local).midX)")
                        Spacer()
                        Text("maxX: \(geometry.frame(in: .local).maxX)")
                    }
                    
                    Text("Global Coordinate Space")
                    HStack(spacing: 10) {
                        Text("minX: \(geometry.frame(in: .global).minX)")
                        Spacer()
                        Text("midX: \(geometry.frame(in: .global).midX)")
                        Spacer()
                        Text("maxX: \(geometry.frame(in: .global).maxX)")
                    }
                }
                .padding(.horizontal)
            }
            .frame(height: 200)
            .foregroundStyle(.white)
            .background(.pink)
            
            HStack {
                GeometryReader { geometry in
                    VStack(alignment: .leading, spacing: 20) {
                        VStack(spacing: 10) {
                            Text("minY: \(geometry.frame(in: .global).minY)")
                            Spacer()
                            Text("midY: \(geometry.frame(in: .global).midY)")
                            Spacer()
                            Text("maxY: \(geometry.frame(in: .global).maxY)")
                        }
                    }
                    .padding(.vertical)
                }
                .foregroundStyle(.white)
                .background(.pink)
                
                Image("MinMidMax")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    GeometryReader_MinMidMax()
}
